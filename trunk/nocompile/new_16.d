// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 11

module dstress.nocompile.new_16;

class MyClass{
	void test(){
		new(size_t s){
			void* v;
			return v;
		}
	}
}
