// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-12-03
// @uri@	news:1nd963-jgj.ln1@birke.kuehne.cn

module dstress.run.c.cast_30_B;

alias cdouble X;

int main(){
	X four = cast(X) (4.0i + 0.4);
	
	assert(four.im == 4.0);
	assert(four.re == 0.4);

	return 0;
}
