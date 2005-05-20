// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 15

module dstress.nocompile.o.offsetof_01;

struct MyStruct{
	int a;
}

int main(){
	MyStruct s;
	s.a = s.a.offsetof;
	return 0;
}
