// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 10

module dstress.nocompile.override_05;

struct MyStruct{
	override int x;
}

int main(){
	MyStruct s;
	return s.x;
}
