// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/byte_07.d,v 1.1 2004/08/20 23:42:52 th Exp $

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