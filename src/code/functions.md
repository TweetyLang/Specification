# 4. Functions
Functions are a block of reusable code that accept input parameters (arguments) and produce an output value (return value). Functions can also include modifier keywords that alter or extend their behaviour.

### Invoking Functions
Functions can be static or instance-based. Static functions can be invoked directly without reference to an object:

```tweety
Add(1, 3);
```

Instance-based functions require an instance of the owning type to be invoked:

```tweety
Maths maths = new Maths();
maths.Add(1, 3);
```