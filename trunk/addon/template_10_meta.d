/*
    Thor - D Metaprogramming Library
    version zero
    (c) 2004-2005 Aleksey Bobnev

    Public Domain
    
    Thanks go to:
    Andrei Alexandrescu - for admirable book "Modern C++ Design" and Loki library
    Andy Friesen - for apropos library, which actually pioneered meta-programming in D
*/
/+module Thor.meta;+/
module addon.template_10_meta;

class NullT
{
}

template Equal(T0,T1)
{
    const bool Equal = false;
}

template Equal(T0,T1 : T0)
{
    const bool Equal = true;
}

template SelectType(bool c, T0,T1)
{
    alias T0 SelectType;
}

template SelectType(bool c : false, T0,T1)
{
    alias T1 SelectType;
}

template SelectAlias(bool c, alias T0,alias T1)
{
    alias T0 SelectAlias;
}

template SelectAlias(bool c : false, alias T0, alias T1)
{
    alias T1 SelectAlias;
}