// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/byte_03.d,v 1.1 2004/08/20 23:42:51 th Exp $

int main(){
	byte a, b, c;

	// "%"
	a=91; b=6; c=a%b;
	assert( a ==   91);
	assert( b ==    6);
	assert( c ==    1);
	a=-91; b=12; c=a%b;
	assert( a ==  -91);
	assert( b ==   12);
	assert( c ==   -7);
	a=91; b=-12; c=a%b;
	assert( a ==   91);
	assert( b ==  -12);
	assert( c ==    7);
	a=-91; b=-12; c=a%b;
	assert( a ==  -91);
	assert( b ==  -12);
	assert( c ==   -7);
	
	return 0;
}