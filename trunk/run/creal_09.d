// $HeadURL$
// $Date$
// $Author$

module dstress.run.creal_09;

int main(){
	creal a = 1.2L;
	assert(a.re == 1.2L);
	assert(a.im == 0.0L);
	a=9.8Li;
	assert(a.re == 0.0L);
	assert(a.im == 9.8L);
	a=1.2L+9.8Li;
	assert(a.re == 1.2L);
	assert(a.im == 9.8L);
	return 0;
}
