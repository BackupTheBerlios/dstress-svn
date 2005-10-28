// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-08-17

// __DSTRESS_ELINE__ 16

module dstress.run.v.void_03_X;

struct Struct{
	int i;
}

int main(){
	Struct x = void;
	return 0;
}
