
// @author@	J Anderson <REMOVEanderson@badmama.com.au>
// @date@	2004-05-23

template MyTemplate(Type){
	this(){
		super.test();
	}
}

class Parent{
	int test(){
		return 2;
	}
}

class Child : Parent{
	mixin MyTemplate!(Child);
}

int main(){
	Child c = new Child();
	return 0;
}
