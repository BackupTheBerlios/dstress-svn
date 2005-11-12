// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-11-12
// @uri@	news:tk-18a2189c960032901deaef67@birke.kuehne.cn

module dstress.run.i.ireal_05_A;

int main(){
	const ireal a = 1.0Li;

	static assert(a.im == 1.0);
	static assert(a.re == 0.0);

	return 0;
}

