// $HeadURL$
// $Date$
// $Author$

module dstress.run.creal_09;

int main(){
	creal a = 1.2;
	assert(a.re == 1.2);
	assert(a.im == 0.0);
	a=9.8i;
	assert(a.re == 0.0);
	assert(a.im == 9.8);
	a=1.2+9.8i;
	assert(a.re == 1.2);
	assert(a.im == 9.8);
	return 0;
}
