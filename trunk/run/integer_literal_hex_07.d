// $HeadURL$
// $Date$
// $Author$

module dstress.run.integer_literal_hex_07;

int main(){
	assert( 0x9LU == 9);
	assert( 0x9LU.sizeof == ulong.sizeof);
	assert( 0x9LU.min == ulong.min);
	assert( 0x9LU.max == ulong.max);
	return 0;
}

