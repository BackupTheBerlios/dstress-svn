// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-05-11
// @uri@	news:rit129-at3.ln1@lnews.kuehne.cn

// __DSTRESS_ELINE__ 16

module dstress.nocompile.o.opMul_07_E;

int main(){
	idouble a = 4.0i;
	idouble b = 2.0i;
	a = a * b;
	assert(a==8.0i);
	return 0;
}
