// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 15

module dstress.nocompile.opNeg_03;

struct MyStruct{
	int x;
}

int main(){
	MyStruct s;
	-s;
	return 0;
}
