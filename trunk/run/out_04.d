
struct MyStruct{
	int x=2;
}

void check(out MyStruct s){
}

int main(){
	MyStruct s;
	s.x=1;
	assert(s.x==1);
	check(s);
	assert(s.x==2);
	return 0;
}
