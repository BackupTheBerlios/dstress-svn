// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-04-06
// @uri@	news:k8udi2-qbi.ln1@lnews.kuehne.cn

module dstress.run.creal_21;

int main(){
	creal c = 2.7L;
	assert(c.re==2.7L);
	assert(c.im==0.0L);
	return 0;
}
