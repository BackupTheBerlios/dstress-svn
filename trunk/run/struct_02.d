
struct MyStruct{
	int x;
}

int main(){
	MyStruct m;
	m.x++;
	assert( m.x == 1);
	return 0;
}
