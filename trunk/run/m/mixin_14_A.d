// $HeadULR$
// $Date$
// $Author$

// @author@	ElfQT <dethjunk@yahoo.com>
// @date@	2005-09-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4927

module dstress.run.m.mixin_14_A;

int main(){
	char[] arg = "AAA";
	mixin Template!();

	assert(Class.foo(arg) == "AAA");
	assert(test() == "XXX");

	return 0;
}

template Template(){
	char[] arg = "XXX";

	char[] test(){
		return Class.foo(arg);
	}
}

class Class{
	static char[] foo(char[] s){
		return s;
	}
}
