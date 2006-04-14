// $HeadURL$
// $Date$
// $Author$

module dstress.run.integer_literal_binary_06;

int main(){
	assert( 0b101uL == 5);
	assert( 0b101uL.sizeof == ulong.sizeof);
	assert( 0b101uL.min == ulong.min);
	assert( 0b101uL.max == ulong.max);
	return 0;
}

