// $HeadURL$
// $Date$
// $Author$

// @desc@	class inheritance recoursion
// @author@	Andrew Fedoniouk <news@terrainformatica.com>
// @date@	2005-06-09
// @uri@	news:d88kv9$he4$1@digitaldaemon.com

// __DSTRESS_ELINE__ 21

module dstress.nocompile.c.class_17;

class A{
	const class B:A{
		   const int C = 5;
	}
}

int main(){
	assert(A.B.B.C==5);
	return 0;
}
