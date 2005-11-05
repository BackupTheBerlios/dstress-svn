// $HeadULR$
// $Date$
// $Author$

// @author@	ElfQT <dethjunk@yahoo.com>
// @date@	2005-09-03
// @uri@	news:dfd6f0$oit$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -inline

module dstress.run.m.mixin_14_E;

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
