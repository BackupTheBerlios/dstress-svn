// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/opNeg_02.d,v 1.2 2004/09/22 23:48:32 th Exp $

struct MyStruct{
	int status;
	void opNeg(){
		status+=3;
	}
}

int main(){
	MyStruct s;
	assert(s.status==0);
	-s;
	assert(s.status==3);
	-s;
	assert(s.status==6);
	return 0;
}
