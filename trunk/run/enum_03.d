// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/enum_03.d,v 1.1 2004/08/23 20:56:27 th Exp $

enum MyEnum : byte {
	A,
	B,
	C
}

int main(){
	MyEnum e;
	assert(e==e.A);
	assert(e==MyEnum.A);
	assert(e.min==0);
	assert(e.max==2);
	assert(e.sizeof==byte.sizeof);
	return 0;
}
