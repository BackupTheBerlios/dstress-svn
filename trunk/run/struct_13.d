// $HeadURL$
// $Date$
// $Author$

// @author@	Lars Ivar Igesund <larsivar@igesund.net>
// @date@	2004-09-19

module dstress.run.struct_13;

struct MyStruct{
	static const MyStruct STATIC;
}

int main(){
	MyStruct s = MyStruct.STATIC;
	return 0;
}
