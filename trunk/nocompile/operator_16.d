// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/operator_16.d,v 1.1 2004/08/20 23:42:44 th Exp $

// @author@	Ivan Senji <ivan.senji@public.srce.hr>
// @date@	2004-08-07
// @uri@	news://cf2ivm$1qu0$1@digitaldaemon.com

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
