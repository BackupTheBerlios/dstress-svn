
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
