// $HeadURL$
// $Date$
// $Author$

// @author@	Ivan Senji <ivan.senji@public.srce.hr>
// @date@	2004-08-07
// @uri@	news:cf2ivm$1qu0$1@digitaldaemon.com

// __DSTRESS_ELINE__  24

module dstress.nocompile.operator_15;

class MyClass{
}

void test( ... ){
}

int main(){
	MyClass a, b;
	a = new MyClass();
	b = new MyClass();

	test ( a << b);
	return 0;
}
