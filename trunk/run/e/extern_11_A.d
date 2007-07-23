// $HeadURL$
// $Date$
// $Author$

module dstress.run.e.extern_11_A;

version(Windows){
	extern(Windows) int test(int a, int b){
		return (a * 2) + b;
	}
}else{
	extern(C) int test(int a, int b){
		return (a * 2) + b;
	}
}

extern(System) int function(int, int) foo = &test;

int main(){
	if(11 != foo(3, 5)){
		assert(0);
	}

	return 0;
}
