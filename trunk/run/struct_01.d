// $HeadURL$
// $Date$
// $Author$

module dstress.run.struct_01;

struct MyStruct{
}

int main(){
	MyStruct m;
	MyStruct * n = &m;
	return 0;
}
