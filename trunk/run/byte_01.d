// $HeadURL$
// $Date$
// $Author$

module dstress.run.byte_01;

int main(){
	byte a;

	assert( a.init == 0);
	assert( byte.init == 0);
	assert((cast(byte)2).init == 0);

	return 0; 
}
