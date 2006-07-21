// $HeadURL$
// $Date$
// $Author$

// @author@	Victor Nakoryakov <nail-mail@mail.ru>
// @date@	2005-07-07
// @uri@	news:daj84k$15p4$1@digitaldaemon.com

module dstress.run.b.bug_expression_4275_B;

class MyClass{
	template foo(T){
		T[] foo(){
			T[] x;
			return x;
		}
	}

	int dummy;
}

class Container{
	MyClass element(){
		MyClass x = new MyClass;
		return x;
	}
}

int main(){
	Container container = new Container();
	MyClass myclass = new MyClass();

	if(container.element().foo!(MyClass).sizeof != (MyClass[]).sizeof ){
		assert(0);
	}
	if(!(myclass.foo!(MyClass).length == 0 || myclass.foo!(MyClass)[0] is myclass )){
		assert(0);
	}

	return 0;
}
