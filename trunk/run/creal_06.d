// $HeadURL$
// $Date$
// $Author$

module dstress.run.creal_06;

int main(){
	float re= 1.0f / 3.0f;
	float im= 1.0f / 5.0f;
	ireal i= 1.0Li;
	creal c= re+i*im;
	assert(c.re == re);
	assert(c.re.sizeof == (real).sizeof);
	return 0;
}
