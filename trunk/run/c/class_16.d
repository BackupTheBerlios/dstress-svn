// $HeadURL$
// $Date$
// $Author$

// @desc@	class inheritance recoursion
// @author@	Andrew Fedoniouk <news@terrainformatica.com>
// @date@	2005-06-09
// @uri@	news:d88kv9$he4$1@digitaldaemon.com

module dstress.run.c.class_16;

class A{
	class B:A{
		   const int C = 5;
	}
}

int main(){
	assert(A.B.C==5);
	assert(A.B.B.C==5);
	assert(A.B.B.B.C==5);
	assert(A.B.B.B.B.C==5);
	assert(A.B.B.B.B.B.C==5);
	assert(A.B.B.B.B.B.B.C==5);
	assert(A.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.C*A.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.B.C==25);
	return 0;
}