// $HeadURL$
// $Date$
// $Author$

module dstress.run.creal_05;

int main(){
	real re= 1.0L / 3.0L;
	real im= 1.0L / 5.0L;
	ireal i= 1.0Li;
	creal c= re+i*im;
	assert(c.re == re);
	assert(c.re.sizeof == re.sizeof);
	return 0;
}
