# 8. Type Access Operators
Different operators are used to access members of a type depending on whether the member is static, instance-based, or accessed through a pointer. These are referred to as "Type Access Operators".

**Static Access**

The `::` operator is used on a type to access its static members.
```tweety
Type::StaticMethod();
```

**Instance Access**

The `.` operator is used on an instance of a type to access its instance members.
```tweety
Type myInstance = new Type();
myInstace.InstanceMethod();
```

**Pointer Access**

The `->` operator is used on a pointer to an instance of a type to access its instance members.
```tweety
myInstancePointer->InstanceMethod();
```

