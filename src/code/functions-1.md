# 4.1 Function Declaration
A Function declaration consists of optional modifier keywords, a specified return type, a unique function name, a parameter list enclosed in parantheses, and a function body defining it's behaviour.

```tweety
i32 Add(i32 a, i32 b) 
{
    return a + b;
}
```

By default, functions defined at the module level are static, whereas functions defined within a type are instance-based. Type-enclosed functions can be explicitly declared static by applying the `static` modifier.