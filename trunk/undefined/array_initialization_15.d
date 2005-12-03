// $HeadURL$
// $Date$
// $Author$

// @author@	Andrew Fedoniouk <news@terrainformatica.com>
// @date@	2005-05-13
// @uri@	news:d63bn0$11v$1@digitaldaemon.com

module dstress.run.a.array_initialization_15;

struct S{
	int i=1;
}

static S[3] s= [ 1: { 2 } ];

int main(){
	assert(s[0].i==1);
	assert(s[1].i==2);
	assert(s[2].i==1);
	return 0;
}
