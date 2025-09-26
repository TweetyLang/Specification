# TweetyLang

## Overview
TweetyLang is a native programming language designed around the philsophy of tools that ***Just Work***. It bridges the gap between the ease of use of a high-level language like C#, and the control of low-level languages like C.

## Goals and Philosophy
### Toolchain Simplicity
TweetyLang provides a unified toolchain and package manager. This guarantees that projects remain compatible, consistent, and predictable across environments.
Developers rely on a single, standardized set of features for building, dependency management, and package installation.

### Nativity
TweetyLang is a native language, compiled ahead of time into machine code. It requires no runtime environment, no JIT compilation, and no external dependencies. This also allows
TweetyLang assemblies to interface directly with other native assemblies, without the need for wrappers.

## Features
### Syntax
TweetyLang uses a syntax inspired by the C-family, with a few liberties taken to prioritize clarity and explicitness.
For a complete specification of TweetyLang’s syntax in EBNF format, refer to the [Grammar Spec](Grammar.md).

- **Variable declaration**
```Tweety
i32 x = 16;
string greeting = "Hello, World!";
```

- **Functions**
```Tweety
i32 add(i32 a, i32 b)
{
  return a + b;
}
```

- **Control structures**
```Tweety
// IF ELSE
if (x > 0)
{
  print("X is Positive");
}
else
{
  print("X is Negative");
}
```

### Typing
TweetyLang is **statically typed**.
- Type safety is enforced at compile time.

### Memory Management
TweetyLang has its own memory model, most akin to C++ pointers but with changed functionality to prevent common memory errors.
TODO: actually figure out the memory model
