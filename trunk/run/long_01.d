// $HeadURL$
// $Date$
// $Author$

module dstress.run.long_01;

int main(){
	long a;
	static assert(a.max == 0x7FFF_FFFF_FFFF_FFFFL);
	static assert(a.min == 0x8000_0000_0000_0000L);
	static assert(a.init == 0);
	static assert(a.sizeof == 8);
	return 0; 
}
