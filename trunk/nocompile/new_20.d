// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 11

module dstress.nocompile.new_20;

class MyClass{
	invariant{
		new(size_t s){
			void* v;
			return v;
		}
	}
}
