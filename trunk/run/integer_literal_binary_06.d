// $HeadURL$
// $Date$
// $Author$

module dstress.run.integer_literal_binary_06;

int main(){
	assert( 0b101ul == 5);
	assert( 0b101ul.sizeof == ulong.sizeof);
	assert( 0b101ul.min == ulong.min);
	assert( 0b101ul.max == ulong.max);
	return 0;
}

