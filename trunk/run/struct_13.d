
// @author@	Lars Ivar Igesund <larsivar@igesund.net>
// @date@	2004-09-19

struct MyStruct{
	static const MyStruct STATIC;
}

int main(){
	MyStruct s = MyStruct.STATIC;
	return 0;
}
