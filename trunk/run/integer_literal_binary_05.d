// $HeadURL$
// $Date$
// $Author$

module dstress.run.integer_literal_binary_05;

int main(){
	assert( 0b101u == 5);
	assert( 0b101u.sizeof == uint.sizeof);
	assert( 0b101u.min == uint.min);
	assert( 0b101u.max == uint.max);
	return 0;
}

