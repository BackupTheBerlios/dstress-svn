// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/deprecated_10.d,v 1.1 2004/08/23 17:18:35 th Exp $

int status;

class MyClass{
	deprecated void depr(){
	}
	void noDepr(){
		status=3;
	}
}


int main(){
	MyClass c = new MyClass();
	assert(status==0);
	c.noDepr();
	assert(status==3);
	return 0;
}
