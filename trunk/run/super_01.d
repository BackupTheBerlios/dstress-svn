// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/super_01.d,v 1.1 2004/08/21 20:44:50 th Exp $

int status;

class Parent{
	void test(){
		status++;
	}
}

class Child : Parent {
	void test(){
		assert(status==0);
		super.test();
		assert(status==1);
	}
}

int main(){
	Child c = new Child();
	c.test();
	assert(status==1);
	return 0;
}

