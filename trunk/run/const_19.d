// $HeadURL$
// $Date$
// $URL$

// @author@	no@where.com
// @date@	2005-04-24
// @uri@	news:d4f0uf$2rif$1@digitaldaemon.com

module dstress.run.const_19;

const int c = b * b;
const int a = 1;
const int b = a * 3;

int[c] x;

int main(){
	assert(x.length==9);
	return 0;
}
