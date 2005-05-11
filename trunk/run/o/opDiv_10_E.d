// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-05-11
// @uri@	news:rit129-at3.ln1@lnews.kuehne.cn

module dstress.run.o.opDiv_10_E;

int main(){
	double a = 4.0i;
	double b = 2.0i;
	a = a / b;
	assert(a==2.0i);
	return 0;
}
