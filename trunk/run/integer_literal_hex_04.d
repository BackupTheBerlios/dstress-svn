// $HeadURL$
// $Date$
// $Author$

module dstress.run.integer_literal_hex_04;

int main(){
	assert( 0xFL == 15);
	assert( 0xFL.sizeof == long.sizeof);
	assert( 0xFL.min == long.min);
	assert( 0xFL.max == long.max);
	return 0;
}

