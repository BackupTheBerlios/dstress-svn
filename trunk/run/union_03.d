union MyUnion{
	int a;
	int b;
}

int main(){
	static MyUnion u={b:3};
	assert(u.a==3);
	assert(u.b==3);
	return 0;
}
