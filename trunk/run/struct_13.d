// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/struct_13.d,v 1.1 2004/09/23 00:33:38 th Exp $

// @author@	Lars Ivar Igesund <larsivar@igesund.net>
// @date@	2004-09-19

struct MyStruct{
	static const MyStruct STATIC;
}

int main(){
	MyStruct s = MyStruct.STATIC;
	return 0;
}
