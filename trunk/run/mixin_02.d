// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/mixin_02.d,v 1.1 2004/09/23 05:46:50 th Exp $

// @author@	Roel Mathys <roel.mathys@yucom.be>
// @date@	2004-05-18

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
