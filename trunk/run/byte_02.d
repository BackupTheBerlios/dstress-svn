
int main(){
	byte a, b, c;

	// "+"
	a=16; b=-124; c=a+b;
	assert( a ==   16);
	assert( b == -124);
	assert( c == -108);
	a=-124; b=16; c=a+b;
	assert( a == -124);
	assert( b ==   16);
	assert( c == -108);
	a=63; b=28; c=a+b;
	assert( a ==   63);
	assert( b ==   28);
	assert( c ==   91);
	a=-63; b=-28; c=a+b;
	assert( a ==  -63);
	assert( b ==  -28);
	assert( c ==  -91);
	
	return 0;
}
