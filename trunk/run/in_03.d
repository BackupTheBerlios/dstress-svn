// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/in_03.d,v 1.2 2004/09/23 07:38:07 th Exp $

class MyClass{
	int x;
}

void check(in MyClass c){
	c=new MyClass();
	c.x=2;
}

int main(){
	MyClass c = new MyClass();
	c.x=1;
	assert(c.x==1);
	check(c);
	assert(c.x==1);
	return 0;
}
