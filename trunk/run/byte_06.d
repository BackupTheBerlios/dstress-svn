// $HeadURL$
// $Date$
// $Author$

module dstress.run.byte_06;

int main(){
	byte a, b, c;

	// "-"
	a=16; b=-16; c=a-b;
	assert( a ==   16);
	assert( b ==  -16);
	assert( c ==   32);
	a=-16; b=16; c=a-b;
	assert( a ==  -16);
	assert( b ==   16);
	assert( c ==  -32);
	a=-63; b=-28; c=a-b;
	assert( a ==  -63);
	assert( b ==  -28);
	assert( c ==  -35);
	a=63; b=28; c=a-b;
	assert( a ==   63);
	assert( b ==   28);
	assert( c ==   35);
	
	return 0;
}
