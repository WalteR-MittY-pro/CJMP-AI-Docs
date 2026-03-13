# systemlibs接口开发指引

## 环境配置
见[开发准备](../quick-start/start-overview.md)和[环境变量配置](systemlibs-build.md#编译前准备)

## 编译构建

见[编译构建](systemlibs-build.md#编译)

## API开发（Android端）

> 以wifiManager模块中的getScanInfoList API为例

### 模块信息
```cangjie
// cjmp/Connectivity/wifi_manager/wifi.cj
package cjmp.wifi_manager
```

### 开发接口
|名称|参数|返回类型|描述|
|:---:|:---:|:---:|:---:|
| getScanInfoList() | - | Array\<WifiScanInfo\> | Obtain the scanned station list.|

```cangjie
// cj/tpc/wifi_manager.cj
public func getScanInfoList(): Array<WifiScanInfo> {}
```

### 开发策略

为了调用Android Java API，本质是要实现Cangjie的调用Java的能力。Cangjie支持与C语言互操作，因此使用Cangjie -> C/C++ -> Java的调用路径，实现Cangjie调用Android Java API。即在Android侧实现Java接口，再通过JNI机制注册Java模块；通过FFI机制实现C/C++模块注册，供应用侧Cangjie调用。

### 伪代码示例
1. Android侧实现`getScanInfoList`方法
    ```java
    // platform/android/Connectivity/wifi_manager/java/src/ohos/ace/plugin/wifimanager/WifiDevicePlugin.java
    public class WifiDevicePlugin implements WifiBroadcastInterface {

        public List<ScanResult> getScanInfoList() {
            // handle
        }
    }
    ```

2. 通过jni调用Java getScanInfoList方法
    ```c++
    // platform/android/Connectivity/wifi_manager/java/jni/wifi_device_jni.cpp
    const char WIFIMANAGER_CLASS_NAME[] = "ohos/ace/plugin/wifimanager/WifiDevicePlugin"; // java类名
    const char METHOD_GET_SCAN_INFO_LIST[] = "getScanInfoList";       // java函数名
    const char SIGNATURE_GET_SCAN_INFO_LIST[] = "()Ljava/util/List;"; // jni函数签名

    struct {
        jobject globalRef;
        jmethodID getScanInfoList;
    } g_pluginClass;

    // create WiFiDeviceJni instance
    // register native method
    WiFiDeviceJni::WiFiDeviceJni()
    {
        auto env = GetJniEnv();
        CHECK_NULL_VOID(env);

        jclass cls = env->FindClass(WIFIMANAGER_CLASS_NAME);
        if (cls == nullptr) {
            HiLog::Error(SYSTEM_API_DOMAIN, "WiFiDeviceJni", "Failed to find class");
            return;
        }
        jmethodID constructor = env->GetMethodID(cls, "<init>", "()V");
        if (constructor == nullptr) {
            HiLog::Error(SYSTEM_API_DOMAIN, "WiFiDeviceJni", "Failed to find constructor");
            return;
        }
        jobject obj = env->NewObject(cls, constructor);
        if (obj == nullptr) {
            HiLog::Error(SYSTEM_API_DOMAIN, "WiFiDeviceJni", "Failed to create object");
            return;
        }
        g_pluginClass.globalRef = env->NewGlobalRef(obj);
        env->DeleteLocalRef(obj);

        // save java method getScanInfoList in jni
        g_pluginClass.getScanInfoList = env->GetMethodID(cls, METHOD_GET_SCAN_INFO_LIST, SIGNATURE_GET_SCAN_INFO_LIST);
        CHECK_NULL_VOID(g_pluginClass.getScanInfoList);

        env->DeleteLocalRef(cls);
    }

    // C call Java
    ErrCode WiFiDeviceJni::GetScanInfoList(WifiScanInfoArr& wifiScanInfoArr)
    {
        auto env = GetJniEnv();

        // call getScanInfoList
        jobject scanResultsList = env->CallObjectMethod(g_pluginClass.globalRef, g_pluginClass.getScanInfoList);

        // handle jobject and return result (java type: List<ScanResult>) to wifiScanInfoArr (C type: WifiScanInfoArr)
    }
    ```

3. 抽象对象，在不同平台实现对应的方法。安卓端则是封装jni方法。
    ```cpp
    // platform/android/Connectivity/wifi_manager/wifi_device.h
    class WifiDevice {
    public:
        static std::shared_ptr<WifiDevice> GetInstance(int systemAbilityId, int instId = 0);
        virtual ErrCode GetScanInfoList(WifiScanInfoArr& wifiScanInfoArr) = 0;
    };
    ```

    ```cpp
    // platform/android/Connectivity/wifi_manager/java/jni/wifi_device_impl.cpp

    // wrap jni method on android platform
    std::shared_ptr<WifiDevice> WifiDevice::GetInstance(int systemAbilityId, int instId)
    {
        return std::make_shared<WifiDeviceImpl>();
    }

    ErrCode WifiDeviceImpl::GetScanInfoList(WifiScanInfoArr& wifiScanInfoArr)
    {
        return WiFiDeviceJni::GetInstance().GetScanInfoList(wifiScanInfoArr);
    }
    ```

4. FFI调用封装对象的实例的接口，从而调用对应平台的接口。
    ```cpp
    // platform/android/Connectivity/wifi_manager/wifi_device_ffi.h
    #ifdef __cplusplus
    extern "C" {
    #endif

    // called by cangjie
    WifiScanInfoArr FfiWifiGetScanInfoList(int32_t& errorCode);

    #ifdef __cplusplus
    }
    #endif
    ```

    ```cpp
    // platform/android/Connectivity/wifi_manager/wifi_device_ffi.cpp

    // create instance of WifiDevice. 
    // For android, WifiDeviceImpl is in platform/android/Connectivity/wifi_manager/java/jni/wifi_device_impl.cpp
    // For ios, WifiDeviceImpl is in platform/ios/Connectivity/wifi_manager/wifi_device_impl.mm
    std::shared_ptr<WifiDevice> wifiDevicePtr = WifiDevice::GetInstance(0);

    // call WifiDevice.GetScanInfoList to call WiFiDeviceJni::GetInstance().GetScanInfoList
    WifiScanInfoArr FfiWifiGetScanInfoList(int32_t& errorCode)
    {
        WifiScanInfoArr cWifiScanInfo { .head = nullptr, .size = 0 };
        errorCode = wifiDevicePtr->GetScanInfoList(cWifiScanInfo);
        return cWifiScanInfo;
    }
    ```

5. 通过FFI机制，实现Cangjie调用C。[参考Cangjie](https://cangjie-lang.cn/docs?url=%2F0.53.13%2FSpec%2Fsource_zh_cn%2FChapter_13_Interop%28zh%29.html)
    ```cangjie
    // Declare the function FfiWifiGetScanInfoList in cangjie
    // cjmp/Connectivity/wifi_manager/ip_info.cj
    foreign {
        func FfiWifiGetScanInfoList(errorCode: CPointer<Int32>): WifiScanInfoArr
    }

    // cjmp/Connectivity/wifi_manager/wifi.cj
    public func getScanInfoList(): Array<WifiScanInfo> {
        var errorCode = 0i32
        let result = unsafe { FfiWifiGetScanInfoList(inout errorCode) }
        convertCStructToCJStruct(result)
    }
    ```

## API开发（iOS端）
> 以 CameraKit 模块中的 getSupportedCameras API 为例

1. oc侧实现`getSupportedCameras`方法

### 模块信息
```cangjie
// cjmp/Multimedia/CameraKit/camera_manager.cj
package cjmp.multimedia.camera
```

### 开发接口
|名称|参数|返回类型|描述|
|:---:|:---:|:---:|:---:|
| 以CameraKit模块中的getSupportedCameras() | - | Array\<CameraDevice\> | Obtain the camera device list. |

```cangjie
// cjmp/Multimedia/CameraKit/camera_manager.cj
public func getSupportedCameras(): Array<CameraDevice> {}
```

### 开发策略
为了调用iOS API，本质是要实现Cangjie的调用object-c的能力。Cangjie支持与C语言互操作，因此使用`Cangjie -> C -> OC`的调用路径，实现Cangjie调用object-c API。因oc是c的超集，c侧代码可以直接调用oc侧代码；通过FFI机制实现C模块注册，供应用侧Cangjie调用。

### 伪代码示例

1. oc侧实现`GetSupportedCameras`方法
    ```object-c
    // platform/ios/Multimedia/CameraKit/camera.h
    - (CArrCJCameraDevice)GetSupportedCameras:(int32_t*)errCode;
    ```
    ```object-c
    // platform/ios/Multimedia/CameraKit/camera.m
    - (CArrCJCameraDevice)GetSupportedCameras:(int32_t*)errCode
    {
        ...
    }
    ```

2. FFI调用封装对象的实例的接口，从而调用对应平台的接口。
    ```object-c
    // platform/ios/Multimedia/CameraKit/camera_ffi.h
    CArrCJCameraDevice FfiCameraManagerGetSupportedCameras(int32_t* errCode);
    ```

    ```object-c
    // platform/ios/Multimedia/CameraKit/camera_ffi.m
    CArrCJCameraDevice FfiCameraManagerGetSupportedCameras(int32_t* errCode)
    {
        return [[Camera shareManager] GetSupportedCameras:errCode];
    }
    ```

3. 通过FFI机制，实现Cangjie调用C。[参考Cangjie](https://cangjie-lang.cn/docs?url=%2F0.53.13%2FSpec%2Fsource_zh_cn%2FChapter_13_Interop%28zh%29.html)
    ```cangjie
    // Declare the function FfiCameraManagerGetSupportedCameras in cangjie
    // cjmp/Multimedia/CameraKit/camera_ffi.cj
    foreign {
        func FfiCameraManagerGetSupportedCameras(errCode: CPointer<Int32>): CArrCCameraDevice
    }

    // cjmp/Multimedia/CameraKit/camera_manager.cj
    public func getSupportedCameras(): Array<CameraDevice> {
        ...
        let devices: CArrCCameraDevice = unsafe {
            FfiCameraManagerGetSupportedCameras(inout errCode)
        }
        convertCStructToCJStruct(devices)
        ...
    }
    ```

## API开发（HarmonyOS端）
> 以PerformanceAnalysisKit.hilog为例

### 模块信息
```cangjie
// cj/cjmp/PerformanceAnalysisKit/hilog/hilog_ohos.cj
package cjmp.hilog
```

### 开发策略
为了调用ohos API接口，要把libohos.hilog.so包装成一个libcjmp.hilog.so。本质上是创建一个仓颉文件，在文件内引入ohos的包。

### 代码示例
```cangjie
package cjmp.hilog
public import ohos.hilog.*
```