// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/byte_08.d,v 1.1 2004/08/20 23:42:52 th Exp $

int main(){
	byte a, b, c;

	// "&"
	a=28; b=7; c=a|b;
	assert( a ==  28);
	assert( b ==   7);
	assert( c ==  31);
	a=-28; b=7; c=a|b;
	assert( a == -28);
	assert( b ==   7);
	assert( c == -25);
	a=28; b=-7; c=a|b;
	assert( a ==  28);
	assert( b ==  -7);
	assert( c ==  -3);
	a=-28; b=-7; c=a|b;
	assert( a == -28);
	assert( b ==  -7);
	assert( c ==  -3);	
	return 0;
}