// $HeadURL$
// $Date$
// $Author$

// @author@	Ant <duitoolkit@yahoo.ca>
// @date@	2004-08-21
// @uri@	news:pan.2004.08.21.15.02.20.419085@yahoo.ca

module dstress.run.super_02;

int status;

class A {
	void test(){
		assert(status==2);
		status++;
	}	
}

class B : A {
}

class C : B {
	void test(){
		assert(status==0);
		status+=2;
		super.test();
		assert(status==3);
	}
}

int main(){
	C c = new C();
	c.test();
	assert(status==3);
	return 0;
}
