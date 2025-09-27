# 3.2 Import Statements
Import statements allow the use of module's contents within another module. An import statement consists of the `import` keyword followed by the identifier of the module being imported and a semicolon.

```tweety
import MyModule;
```

When importing a nested module, each containing module in the hierarchy is accessed using the `::` operator. For example, to import a module named 'Module2' nested within a module named 'Module1', the import statement would be as follows:

```tweety
import Module1::Module2;
```