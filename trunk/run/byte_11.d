// $HeadURL$
// $Date$
// $Author$

module dstress.run.byte_11;

int main(){
	byte a;

	assert(a.sizeof == 1);
	assert(byte.sizeof == 1);
	assert((cast(byte)1).sizeof == 1);
	assert(typeid(byte).tsize() == 1);

	return 0; 
}
