// @author@	Bastiaan Veelo <Bastiaan.N.Veelo@ntu.no>
// @date@	2004-09-21

int status;

template ctor(){
	this(){
		this(2);
	}
	this(int i){
		status+=i;
	}
}

class MyClass{
	mixin ctor;
}

int main(){
	assert(status==0);
	MyClass object = new MyClass();
	assert(status==2);
	object = new MyObject(3);
	assert(status==5);
	return 0;
}
