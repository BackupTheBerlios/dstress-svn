// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/opPos_02.d,v 1.1 2004/09/21 21:04:48 th Exp $

struct MyStruct{
	int status;
	void opPos(){
		status+=3;
	}
}

int main(){
	MyStruct s;
	assert(s.status==0);
	+s;
	assert(s.status==3);
	+s;
	assert(s.status==6);
	return 0;
}
