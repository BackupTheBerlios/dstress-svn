// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 11

module dstress.nocompile.sizeof_09;

union MyUnion{
	int a;
	size_t sizeof(){
		return 0;
	}	
}
