// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/out_05.d,v 1.2 2004/09/23 11:16:54 th Exp $

int status;

class MyClass{
	int x=2;
}

void check(out MyClass c){
	assert(c==null);
}

int main(){
	MyClass c = new MyClass();
	assert(c!=null);
	check(c);
	assert(c==null);
	return 0;
}
