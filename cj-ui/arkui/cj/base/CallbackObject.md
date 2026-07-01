# CallbackObject

public abstract class CallbackObject

Base class for all CJ-side callback objects passed across the FFI boundary. The framework holds callback instances by their `CallbackObject` identity and dispatches their `invoke` overrides from native code.

Subclasses include `Callback0Argument`, `Callback1Argument<A>`, `Callback2Argument<A, B>`, `Callback1ArgumentWithReturn<A, B>`, `Callback3ArgumentWithReturn<A, B, C, D>` and `CallbackWithReturn<A>`.
