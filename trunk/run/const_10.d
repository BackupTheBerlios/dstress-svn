// $HeadURL$
// $Date$
// $URL$

module dstress.run.const_10;

struct MyStruct{
	int i=2;
}

const MyStruct s;

int main(){
	assert(s.i==2);
	return 0;
}
