// $HeadURL$
// $Date$
// $Author$

module dstress.run.creal_07;

int main(){
	real re= 1.0L / 3.0L;
	real im= 1.0L / 5.0L;
	ireal i= 1.0Li;
	creal c= re+i*im;
	assert(c.im == im);
	assert(c.im.sizeof == im.sizeof);
	return 0;
}
