// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/byte_04.d,v 1.1 2004/08/20 23:42:52 th Exp $

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