// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 10

module dstress.nocompile.override_06;

struct MyStruct{
	override int x(){
		return 0;
	}
}

int main(){
	MyStruct s;
	return s.x();
}
