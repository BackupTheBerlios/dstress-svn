// $HeadURL$
// $Date$
// $Author$

module dstress.run.byte_04;

int main(){
	byte a, b, c;

	// "/"
	a=91; b=7; c=a/b;
	assert( a ==   91);
	assert( b ==    7);
	assert( c ==   13);
	a=-91; b=13; c=a/b;
	assert( a ==  -91);
	assert( b ==   13);
	assert( c ==   -7);
	a=91; b=-13; c=a/b;
	assert( a ==   91);
	assert( b ==  -13);
	assert( c ==   -7);
	a=-91; b=-13; c=a/b;
	assert( a ==  -91);
	assert( b ==  -13);
	assert( c ==    7);
	
	return 0;
}
