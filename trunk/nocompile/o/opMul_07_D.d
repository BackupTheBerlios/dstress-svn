// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-05-11
// @uri@	news:rit129-at3.ln1@lnews.kuehne.cn

// __DSTRESS_ELINE__ 16

module dstress.nocompile.o.opMul_07_D;

int main(){
	ifloat a = 4.0fi;
	ifloat b = 2.0fi;
	a = a * b;
	assert(a==8.0fi);
	return 0;
}
