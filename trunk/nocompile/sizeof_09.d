// $HeadURL$
// $Date$
// $Author$

module dstress.nocompile.sizeof_09;

union MyUnion{
	int a;
	size_t sizeof(){
		return 0;
	}	
}
