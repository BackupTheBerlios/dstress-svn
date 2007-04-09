// $HeadURL$
// $Date$
// $Author$

// @author@	Russell Wilkins <Russell.Wilkins@grovestarsoftware.com>
// @date@	2005-02-05
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2865

// __DSTRESS_ELINE__ 19

module dstress.nocompile.cast_19;

class MyClass{
}

MyClass[char[]] myarray;

void fn(){
        foreach (MyClass mc; myarray) return mc;
}

