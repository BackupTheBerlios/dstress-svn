// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/overload_07.d,v 1.1 2004/08/20 23:42:54 th Exp $

// @author@	Andy Friesen <andy@ikagames.com>
// @date@	2004-04-30
// @uri@	news://c6s698$2nt$1@digitaldaemon.com

int status;

class MyClass{
	void foo(){
		status='N';
	}
	
	static void foo(int x){
		status=x;
	}
}

int main(){
	MyClass m = new MyClass();

	MyClass.foo('S');
	assert(status=='S');

	m.foo('s');
	assert(status=='s');

	m.foo();
	assert(status=='N');

	return 0;
}
