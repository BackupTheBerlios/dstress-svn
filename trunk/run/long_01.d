module dstress.run.long_01;

int main(){
	long a;
	assert(a.max == 0x7FFF_FFFF_FFFF_FFFFl);
	assert(a.min == 0xFFFF_FFFF_FFFF_FFFFl);
	assert(a.init == 0);
	assert(a.sizeof == 4);
	return 0; 
}
