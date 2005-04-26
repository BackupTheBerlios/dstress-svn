// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-04-26
// @uri@	news:pln1k2-5f3.ln1@lnews.kuehne.cn

module dstress.run.creal_25;

int main(){
	creal c = 27Li;
	assert(c.re==0.0L);
	assert(c.im==27.0Li);
	return 0;
}
