
int main(){
	byte a, b, c;

	// "&"
	a=28; b=7; c=a&b;
	assert( a ==  28);
	assert( b ==   7);
	assert( c ==   4);
	a=-28; b=7; c=a&b;
	assert( a == -28);
	assert( b ==   7);
	assert( c ==   4);
	a=28; b=-7; c=a&b;
	assert( a ==  28);
	assert( b ==  -7);
	assert( c ==  24);
	a=-28; b=-7; c=a&b;
	assert( a == -28);
	assert( b ==  -7);
	assert( c == -32);	
	return 0;
}
