// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/super_04.d,v 1.1 2004/08/21 20:45:46 th Exp $

int x;
struct MyStruct{
	int x;
	void test(){
		super.x=1;
	}
}

int main(){
	MyStruct c;
	c.test();
	return 0;
}
