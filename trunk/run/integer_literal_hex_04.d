// $HeadURL$
// $Date$
// $Author$

module dstress.run.integer_literal_hex_04;

int main(){
	assert( 0xFl == 15);
	assert( 0xFl.sizeof == long.sizeof);
	assert( 0xFl.min == long.min);
	assert( 0xFl.max == long.max);
	return 0;
}

