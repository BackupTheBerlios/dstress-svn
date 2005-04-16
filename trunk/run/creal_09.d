// $HeadURL$
// $Date$
// $Author$

module dstress.run.creal_09;

int main(){
	creal a=1.3L+9.7Li;
	assert(a.re == 1.3L);
	assert(a.im == 9.7L);
	return 0;
}
