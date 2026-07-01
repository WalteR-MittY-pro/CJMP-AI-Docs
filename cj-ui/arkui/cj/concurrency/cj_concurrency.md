# cj_concurrency

Top-level functions for concurrent task scheduling.

---

## API

### launch
```
public func launch(task: () -> Unit): Unit
```

- description:Posts `task` to the main thread for asynchronous execution and returns immediately.
