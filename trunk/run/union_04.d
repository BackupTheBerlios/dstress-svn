union MyUnion{
	short s;
	byte b;
}

int main(){
	static MyUnion u={b:3};
	assert(u.sizeof==short.sizeof);
	assert(MyUnion.sizeof==short.sizeof);
	return 0;
}
