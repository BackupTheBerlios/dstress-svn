// $HeadURL$
// $Date$
// $Author$

module dstress.run.bit_01;

int main(){
	bit a;
	assert(a.max == 1);
	assert(a.min == 0);
	assert(a.init == 0);

	assert(a.sizeof == typeid( bit ).tsize());
	
	a = true;
	assert( a == 1);
	bit b = 1;
	assert( b == 1);
	
	bit c = false;
	assert( c == 0);
	bit d = 0;
	assert( d == 0);
	
	return 0; 
}
