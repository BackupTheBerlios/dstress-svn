// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/out_06.d,v 1.2 2004/09/23 11:16:54 th Exp $

int status;

class MyClass{
	int x=2;
}

void check(out MyClass c){
	c = new MyClass();
}

int main(){
	MyClass c = new MyClass();
	c.x=1;
	assert(c.x==1);
	check(c);
	assert(c.x==2);
	return 0;
}
