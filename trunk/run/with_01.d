// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/with_01.d,v 1.1 2004/09/22 20:12:55 th Exp $

class MyClass{
	int test(){
		return 1;
	}
}

int test(){
	return 0;
}

int main(){
	MyClass object=new MyClass();
	assert(test()==0);
	with(object){
		assert(test()==1);
	}
	assert(test()==0);
	return 0;
}
