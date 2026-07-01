# ContainerBase

Container base class, inherits from ViewBase, provides child management and build/pop pipeline for container components that can hold child content.

> Note: This base class is not annotated with `@APILevel` metadata in source. It is internal infrastructure; users do not instantiate it directly.

---

## ContainerBase
```
public abstract class ContainerBase <: ViewBase
```


### initial

```
protected open override func initial()
```

- description:Container-specific initialisation hook called during the build pipeline before children are generated. Default no-op; subclasses override to set up container state.
### genChild

```
protected open func genChild()
```

- description:Generates the container's child components during the build pipeline. Default no-op; subclasses override to emit child component declarations.
> All container components such as Column/Row/Stack/Flex/Grid/List inherit from ContainerBase.
