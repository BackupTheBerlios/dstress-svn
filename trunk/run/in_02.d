// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/in_02.d,v 1.1 2004/08/23 17:18:35 th Exp $

struct MyStruct{
	int x;
}

void check(in MyStruct s){
	assert(s.x==1);
	s.x++;
	assert(s.x==2);
}

int main(){
	MyStruct s;
	s.x=1;
	assert(s.x==1);
	check(s);
	assert(s.x==1);
	return 0;
}
