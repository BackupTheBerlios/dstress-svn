
struct MyStruct{
	int x;
}

void check(in MyStruct s){
	assert(s.x==1);
	s.x++;
	assert(s.x==2);
}

int main(){
	MyStruct s;
	s.x=1;
	assert(s.x==1);
	check(s);
	assert(s.x==1);
	return 0;
}
