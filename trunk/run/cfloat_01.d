// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-04-26
// @uri@	news:pln1k2-5f3.ln1@lnews.kuehne.cn

module dstress.run.cfloat_01;

int main(){
	cfloat c = 27Fi;
	assert(c.re==0.0F);
	assert(c.im==27.0F);
	return 0;
}
