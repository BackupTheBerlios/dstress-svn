// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-11-02
// @uri@	news:th-0AA4B81A0D5ACA3BC73EDCE5@birke.kuehne.cn

// __DSTRESS_ELINE__ 21

module dstress.nocompile.o.opModAssign_18_D;

struct X{
	float a;
}

void main(){
	X x;
	float a;
	
	x %= a;
}