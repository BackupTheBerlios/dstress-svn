struct MyStruct{
	int a;
	int b;
	int c = 7;
}

int main(){
	static MyStruct s={c:2};
	assert(s.a==int.init);
	assert(s.b==int.init);
	assert(s.c==2);
	return 0;
}
