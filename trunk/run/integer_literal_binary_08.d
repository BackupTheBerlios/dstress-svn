// $HeadURL$
// $Date$
// $Author$

module dstress.run.integer_literal_binary_08;

int main(){
	assert( 0b_1_01_U == 5);
	assert( 0b_1_01_U.sizeof == uint.sizeof);
	assert( 0b_1_01_U.min == uint.min);
	assert( 0b_1_01_U.max == uint.max);
	return 0;
}

