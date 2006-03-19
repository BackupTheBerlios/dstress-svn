// $HeadURL$
// $Date$
// $Author$

module dstress.run.creal_02;

int main(){
	real x1 = 2.0L;
	real y1 = 3.0L;
	real x2 = 5.0L;
	real y2 = 7.0L;
	ireal i = 1.0Li;

	creal a = x1 + y1*i;
	creal b = x2 + y2*i;
	creal c = a - b;

	creal d = (x1-x2) + (y1*i-y2*i);
	assert(c == d);

	return 0;
}
