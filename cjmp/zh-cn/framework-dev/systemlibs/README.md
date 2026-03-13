# systemlibs仓目录结构

``` bash
systemlibs/
├── build/                           # gn构建相关配置
├── cjmp/                            # 仓颉接口
├── out/                             # build生成的构建产物
├── platform/                        # cjmp桥接层以及Android/iOS底层实现
├── test/                            # 单元测试/集成测试代码
├── third_party/                     # 软链接到CJMP/third_party仓，方便进行跨仓编译
├── BUILD.gn                         # gn构建入口
├── build.sh                         # 构建脚本
└── config.gni                       # gn构建全局配置
```

# systemlibs 仓开发

- [架构设计](systemlibs-design.md)

- [功能说明(暂无)](apis)

- [编译构建](systemlibs-build.md)

- [开发示例](systemlibs-demo.md)

- [测试验证](systemlibs-test.md)

