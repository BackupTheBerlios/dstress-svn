// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-11-02
// @uri@	news:th-0AA4B81A0D5ACA3BC73EDCE5@birke.kuehne.cn

// __DSTRESS_ELINE__ 21

module dstress.nocompile.o.opUShrAssign_18_F;

struct X{
	ifloat a;
}

void main(){
	X x;
	ifloat a;
	
	a >>>= x;
}
