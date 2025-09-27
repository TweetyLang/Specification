# 3.1 Module Declaration
A Module declaration consists of the `module` keyword followed by the module's identifier and then it's body. Module declarations do not support applying any modifiers.

```tweety
module MyModule 
{
    // Module contents
}
```

A new module declaration can only occur at the top level of a source file or nested within another module. It's identifier must be unique within the program and cannot collide with the identifier of any existing module declaration.