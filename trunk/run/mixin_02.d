// $HeadURL$
// $Date$
// $Author$

// @author@	Roel Mathys <roel.mathys@yucom.be>
// @date@	2004-05-18

module dstress.run.mixin_02;

interface MyInterface{
	int test();
}

template MyTemplate(){
	int test(){
		return 1;
	}
}

class MyClass : MyInterface{
	mixin MyTemplate;
}

int main(){
	MyClass c = new MyClass();
	assert(c.test()==1);
	return 0;
}
