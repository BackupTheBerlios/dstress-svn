// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/out_04.d,v 1.1 2004/08/23 17:18:35 th Exp $

struct MyStruct{
	int x=2;
}

void check(out MyStruct s){
}

int main(){
	MyStruct s;
	s.x=1;
	assert(s.x==1);
	check(s);
	assert(s.x==2);
	return 0;
}
