// $HeadULR$
// $Date$
// $Author$

// @author@	ElfQT <dethjunk@yahoo.com>
// @date@	2005-09-03
// @uri@	news:dfd6f0$oit$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -g

module dstress.run.m.mixin_14_J;

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