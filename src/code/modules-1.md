# 3.1 Module Declaration
A Module declaration consists of the `module` keyword followed by the module's identifier and then it's body. Module declarations do not support applying any modifiers.

```tweety
module MyModule 
{
    // Module contents
}
```

A new module declaration can only occur at the top level of a source file. It's identifier must be unique within the program and cannot collide with the identifier of any existing module declaration.

### Exported Definitions
By default, definitions within a module are private and can only be accessed inside the module where they are declared. To make a definition available to other modules when the module is imported, it must be marked with the `export` keyword:

```tweety
module MyModule
{
    // This function can only be calling from within this module
    i32 PrivateNumFunc()
    {
        return 16;
    }

    // This function can be called from another module
    export i32 NumFunc()
    {
        return PrivateNumFunc();
    }
}
