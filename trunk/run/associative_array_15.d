// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle <ben.hinkle@gmail.com>
// @date@	2005-03-25
// @uri@	news:d247b2$mr$1@digitaldaemon.com

module dstress.run.associative_array_15;

int main() {
	int[ifloat] x;
	ifloat d=22i;
	x[d] = 44;
	assert( x[d] == 44 );
	return 0;
}