// $HeadURL$
// $Date$
// $Author$

// @author@	Russell Wilkins <Russell.Wilkins@grovestarsoftware.com>
// @date@	2005-02-05
// @uri@	news:cu1tku$18h6$1@digitaldaemon.com

// __DSTRESS_ELINE__ 19

module dstress.nocompile.cast_19;

class MyClass{
}

MyClass[char[]] myarray;

void fn(){
        foreach (MyClass mc; myarray) return mc;
}

