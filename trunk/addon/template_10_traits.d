/*
    Thor - D Metaprogramming Library
    version zero
    (c) 2004-2005 Aleksey Bobnev

    Public Domain
    
    Thanks go to:
    Andrei Alexandrescu - for admirable book "Modern C++ Design" and Loki library
    Andy Friesen - for apropos library, which actually pioneered meta-programming in D
*/
/+module Thor.traits;+/
module addon.template_10_traits;

private
{
    /+import Thor.meta;+/
    import addon.template_10_meta;
}

template IsArray(T)
{
    static const bool IsArray = false;
}

template IsArray(T : T[])
{
    static const bool IsArray = true;
}

template IsPointer(T)
{
    static const bool IsPointer = false;
}

template IsPointer(T : T*)
{
    static const bool IsPointer = true;
}

template IsObject(T)
{
    static const bool IsObject = false;
}

template IsObject(T : Object)
{
    static const bool IsObject = true;
}

template ElementType(T : T[])
{
    alias T ElementType;
}

template ElementType(T)
{
    alias T ElementType;
}

template PointeeType(T : T*)
{
    alias T PointeeType;
}

template PointeeType(T)
{
    alias T PointeeType;
}

// type traits
template Traits(T)
{
    // IsConvertableTo
    // can T be converted to X?

    template IsConvertableTo(X)
    {
        static bool IsConvertableTo = false;
    }

    template IsConvertableTo(X : T)
    {
        static bool IsConvertableTo = true;
    }  

    alias IsArray!(T) isArray;
    alias IsPointer!(T) isPointer;
    alias IsObject!(T) isObject;

    alias SelectType!((isArray),ElementType!(T),SelectType!((isPointer),PointeeType!(T),T)) subType;
}

template Inherits(Base : Object, Child : Object)
{
    const bool Inherits = Traits!(Base).IsConvertableTo!(Child) && !Traits!(Child).IsConvertableTo!(Base);
}