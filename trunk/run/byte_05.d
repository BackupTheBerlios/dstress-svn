// $HeadURL$
// $Date$
// $Author$

module dstress.run.byte_05;

int main(){
	byte a, b, c;

	// "*"
	a=7; b=13; c=a*b;
	assert( a ==    7);
	assert( b ==   13);
	assert( c ==   91);
	a=-7; b=13; c=a*b;
	assert( a ==   -7);
	assert( b ==   13);
	assert( c ==  -91);
	a=7; b=-13; c=a*b;
	assert( a ==    7);
	assert( b ==  -13);
	assert( c ==  -91);
	a=-7; b=-13; c=a*b;
	assert( a ==   -7);
	assert( b ==  -13);
	assert( c ==   91);
	
	return 0;
}
