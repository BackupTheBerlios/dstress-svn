/*
    Thor - D Metaprogramming Library
    version zero
    (c) 2004-2005 Aleksey Bobnev

    Public Domain
    
    Thanks go to:
    Andrei Alexandrescu - for admirable book "Modern C++ Design" and Loki library
    Andy Friesen - for apropos library, which actually pioneered meta-programming in D
*/
/+module Thor.typelist;+/
module addon.template_10_typelist;

private
{
    /+import Thor.meta;+/
    import addon.template_10_meta;
}


class TypeList
{
    alias NullT H;
    alias NullT T;
    template Length()
    {
        static const int Length = 0;
    }
}

template Length(_TL : TypeList)
{
    static const int Length = 1 + .Length!(_TL.T);
}

template Length(_TL : NullT)
{
    static const int Length = 0;
}


template RemoveAll(_TL : TypeList, T)
{
    alias SelectType!(Equal!(_TL.H,T),.RemoveAll!(_TL.T,T),
                                      .Cons!(_TL.H,.RemoveAll!(_TL.T,T))
                     ) RemoveAll;
}

template RemoveAll(_TL : NullT, T)
{
    alias NullT RemoveAll;
}

template RemoveAll(_TL, T : NullT)
{
    alias _TL RemoveAll;
}

template TypeidPrint(_TL : TypeList)
{
    void TypeidPrint()
    {
        typeid(_TL.H).print();
        .TypeidPrint!(_TL.T)();
    }
}

template TypeidPrint(_T)
{
    void TypeidPrint()
    {
        typeid(_T).print();
    }
}

template TypeidPrint(_TL : NullT)
{
    void TypeidPrint()
    {        
    }
}

/*
    Construct type list from head and tail
    typical use :
    Cons!(A,Cons!(B,Cons!(C,NullT)))
*/
template Cons(_Head, _Tail : TypeList)
{
    class Cons : TypeList
    {
        alias _Head H;
        alias _Tail T;
        template Length()
        {
            static const int Length = 1 + .Length!(T);
        }
    }
}

template Cons(_Head : NullT, _Tail : TypeList)
{
    class Cons : TypeList
    {
        alias _Tail.H H;
        alias _Tail.T T;
        template Length()
        {
            static const int Length = .Length!(_Tail);
        }
    }
}

template Cons(_Head, _Tail : NullT)
{
    class Cons : TypeList
    {
        alias _Head H;
        alias _Tail T;
        template Length()
        {
            static const int Length = 1;
        }
    }
}

template TL(T0)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias NullT T;
        template Length()
        {
            static const int Length = 1;
        }
    }
}

// auto-generated up to 20 parameters
template TL(T0,T1)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1) T;
        template Length()
        {
            static const int Length = 2;
        }
    }
}
template TL(T0,T1,T2)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2) T;
        template Length()
        {
            static const int Length = 3;
        }
    }
}
template TL(T0,T1,T2,T3)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2,T3) T;
        template Length()
        {
            static const int Length = 4;
        }
    }
}
template TL(T0,T1,T2,T3,T4)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2,T3,T4) T;
        template Length()
        {
            static const int Length = 5;
        }
    }
}
template TL(T0,T1,T2,T3,T4,T5)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2,T3,T4,T5) T;
        template Length()
        {
            static const int Length = 6;
        }
    }
}
template TL(T0,T1,T2,T3,T4,T5,T6)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2,T3,T4,T5,T6) T;
        template Length()
        {
            static const int Length = 7;
        }
    }
}
template TL(T0,T1,T2,T3,T4,T5,T6,T7)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2,T3,T4,T5,T6,T7) T;
        template Length()
        {
            static const int Length = 8;
        }
    }
}
template TL(T0,T1,T2,T3,T4,T5,T6,T7,T8)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2,T3,T4,T5,T6,T7,T8) T;
        template Length()
        {
            static const int Length = 9;
        }
    }
}
template TL(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2,T3,T4,T5,T6,T7,T8,T9) T;
        template Length()
        {
            static const int Length = 10;
        }
    }
}
template TL(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2,T3,T4,T5,T6,T7,T8,T9,T10) T;
        template Length()
        {
            static const int Length = 11;
        }
    }
}
template TL(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11) T;
        template Length()
        {
            static const int Length = 12;
        }
    }
}
template TL(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12) T;
        template Length()
        {
            static const int Length = 13;
        }
    }
}
template TL(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13) T;
        template Length()
        {
            static const int Length = 14;
        }
    }
}
template TL(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14) T;
        template Length()
        {
            static const int Length = 15;
        }
    }
}
template TL(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15) T;
        template Length()
        {
            static const int Length = 16;
        }
    }
}
template TL(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16) T;
        template Length()
        {
            static const int Length = 17;
        }
    }
}
template TL(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17) T;
        template Length()
        {
            static const int Length = 18;
        }
    }
}
template TL(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18) T;
        template Length()
        {
            static const int Length = 19;
        }
    }
}
template TL(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19)
{
    class TL : TypeList
    {
        public:
        alias T0 H;
        alias .TL!(T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19) T;
        template Length()
        {
            static const int Length = 20;
        }
    }
}