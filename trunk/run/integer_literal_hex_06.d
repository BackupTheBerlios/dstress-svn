// $HeadURL$
// $Date$
// $Author$

module dstress.run.integer_literal_hex_06;

int main(){
	assert( 0X5uL == 5);
	assert( 0X5uL.sizeof == ulong.sizeof);
	assert( 0X5uL.min == ulong.min);
	assert( 0X5uL.max == ulong.max);
	return 0;
}

