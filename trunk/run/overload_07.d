// @author@	Andy Friesen <andy@ikagames.com>
// @date@	2004-04-30
// @uri@	news://c6s698$2nt$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:32

module dstress.run.overload_07;

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
