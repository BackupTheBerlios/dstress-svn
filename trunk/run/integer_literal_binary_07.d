// $HeadURL$
// $Date$
// $Author$

module dstress.run.integer_literal_binary_07;

int main(){
	assert( 0b101LU == 5);
	assert( 0b101LU.sizeof == ulong.sizeof);
	assert( 0b101LU.min == ulong.min);
	assert( 0b101LU.max == ulong.max);
	return 0;
}

