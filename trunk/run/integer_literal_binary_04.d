// $HeadURL$
// $Date$
// $Author$

module dstress.run.integer_literal_binary_04;

int main(){
	assert( 0b101l == 5);
	assert( 0b101l.sizeof == long.sizeof);
	assert( 0b101l.min == long.min);
	assert( 0b101l.max == long.max);
	return 0;
}

