// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-11-12
// @uri@	news:tk-18a2189c960032901deaef67@birke.kuehne.cn

module dstress.run.i.idouble_04_B;

int main(){
	idouble a = 1.0i;

	assert(a.im == 1.0);
	assert(a.re == 0.0);

	return 0;
}

