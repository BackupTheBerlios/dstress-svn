struct MyStruct{
	int a;
	int b;
	int c = 7;
}

int main(){
	static MyStruct s={2,c:3};
	assert(s.a==2);
	assert(s.b==int.init);
	assert(s.c==3);
	return 0;
}
