// $HeadURL$
// $Date$
// $Author$

module dstress.run.creal_05;

int main(){
	real re= 1/3;
	real im= 1/5;
	ireal i=1.0i;
	creal c= re+i*im;
	assert(c.re == re);
	assert(c.re.sizeof == re.sizeof);
	return 0;
}
