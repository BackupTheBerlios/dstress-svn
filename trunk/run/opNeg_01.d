// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/opNeg_01.d,v 1.2 2004/09/22 23:48:32 th Exp $

class MyClass{
	int status;

	void opNeg(){
		status+=9;
	}
}

int main(){
	MyClass c = new MyClass();
	assert(c.status==0);
	-c;
	assert(c.status==9);
	-c;
	assert(c.status==18);
	return 0;
}
