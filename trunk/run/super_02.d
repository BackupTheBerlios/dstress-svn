//$Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/super_02.d,v 1.1 2004/08/21 20:44:51 th Exp $

// @author@	Ant <duitoolkit@yahoo.ca>
// @date@	2004-08-21
// @uri@	news://pan.2004.08.21.15.02.20.419085@yahoo.ca>

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
