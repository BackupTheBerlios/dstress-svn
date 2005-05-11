// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-05-11
// @uri@	news:rit129-at3.ln1@lnews.kuehne.cn

module dstress.run.o.opDiv_10_D;

int main(){
	ifloat a = 4.0fi;
	ifloat b = 2.0fi;
	a = a / b;
	assert(a==2.0fi);
	return 0;
}
