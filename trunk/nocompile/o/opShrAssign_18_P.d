// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-11-02
// @uri@	news:th-0AA4B81A0D5ACA3BC73EDCE5@birke.kuehne.cn

// __DSTRESS_MLINE__ 21

module dstress.nocompile.o.opShrAssign_18_P;

struct X{
	int a;
}

void main(){
	X x;
	int a;
	
	x >>= a;
}
