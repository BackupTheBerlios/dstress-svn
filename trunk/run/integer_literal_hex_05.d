// $HeadURL$
// $Date$
// $Author$

module dstress.run.integer_literal_hex_05;

int main(){
	assert( 0xDu == 13);
	assert( 0xDu.sizeof == uint.sizeof);
	assert( 0xDu.min == uint.min);
	assert( 0xDu.max == uint.max);
	return 0;
}

