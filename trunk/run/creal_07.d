module dstress.run.creal_07;

int main(){
	real re= 1/3;
	real im= 1/5;
	ireal i=1.0i;
	creal c= re+i*im;
	assert(c.im == im);
	assert(c.im.sizeof == im.sizeof);
	return 0;
}
