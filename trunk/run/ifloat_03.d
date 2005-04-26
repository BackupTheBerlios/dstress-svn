// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-04-26
// @uri@	news:pln1k2-5f3.ln1@lnews.kuehne.cn

module dstress.run.float_03;

int main(){
	ifloat c = 27fi;
	assert(c==27.0fi);
	return 0;
}
