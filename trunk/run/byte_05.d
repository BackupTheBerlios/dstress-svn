// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/byte_05.d,v 1.1 2004/08/20 23:42:52 th Exp $

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