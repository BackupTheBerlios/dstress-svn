struct MyStruct{
	int a;
	int b;
	int c = 7;
}

int main(){
	static MyStruct s={a:2};
	assert(s.a==2);
	assert(s.b==int.init);
	assert(s.c==7);
	return 0;
}
