module dstress.run.creal_06;

int main(){
	float re= 1/3;
	float im= 1/5;
	ireal i=1.0i;
	creal c= re+i*im;
	assert(c.im == im);
	assert(c.im.sizeof == (real).sizeof);
	return 0;
}
