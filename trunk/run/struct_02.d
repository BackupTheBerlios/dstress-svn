// $HeadURL$
// $Date$
// $Author$

module dstress.run.struct_02;

struct MyStruct{
	int x;
}

int main(){
	MyStruct m;
	m.x++;
	assert( m.x == 1);
	return 0;
}
