// $HeadULR$
// $Date$
// $Author$

// @author@	ElfQT <dethjunk@yahoo.com>
// @date@	2005-09-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4927

module dstress.run.m.mixin_14_B;

int main(){
	int arg = 1;
	mixin Template!();

	assert(Class.foo(arg) == 1);
	assert(test() == 2);

	return 0;
}

template Template(){
	int arg = 2;

	int test(){
		return Class.foo(arg);
	}
}

class Class{
	static int foo(int i){
		return i;
	}
}
