// $HeadURL$
// $Date$
// $Author$

module dstress.run.integer_literal_binary_04;

int main(){
	static assert( 0b101L == 5);
	static assert( 0b101L.sizeof == long.sizeof);
	static assert( 0b101L.min == long.min);
	static assert( 0b101L.max == long.max);
	return 0;
}

