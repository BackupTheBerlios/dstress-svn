// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/opPos_01.d,v 1.1 2004/09/21 21:04:48 th Exp $

class MyClass{
	int status;
	void opPos(){
		status+=3;
	}
}

int main(){
	MyClass c = new MyClass();
	assert(c.status==0);
	+c;
	assert(c.status==3);
	+c;
	assert(c.status==6);
	return 0;
}
