// $HeadURL$
// $Date$
// $Author$

module dstress.run.bool_01;

int main(){
	bool a;
	assert(a.max == 1);
	assert(a.min == 0);
	assert(a.init == 0);

	assert(a.sizeof == typeid( bool ).tsize());
	
	a = true;
	assert( a == 1);
	bool b = 1;
	assert( b == 1);
	
	bool c = false;
	assert( c == 0);
	bool d = 0;
	assert( d == 0);
	
	return 0; 
}
