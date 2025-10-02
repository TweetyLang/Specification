# 7. Properties
Properties are encapsulated [fields](fields.md) that allow functions to be ran when their value is read (getter) or modified (setter).

Property declarations consist of optional modifier keywords, it's type, a unique name, getters and setter definitions, and optionally an assignment.

**Both of these examples are valid properties:**
```tweety
public i32 MyNumber { get; set; } = 16;
```

```tweety
public i32 MyNumber 
{
    // Type.MyNumber will return MyNumber's current value + 10.
    get 
    {  
        return value + 10;
    }

    // Type.MyNumber = 10 will print and then update MyNumber's current value.
    set 
    {
        printf("Set MyNumber.");
        field = value;
    }
}
```