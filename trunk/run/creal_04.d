module dstress.run.creal_04;

int main(){
	real x1 = 2.0;
	real y1 = 3.0;
	real x2 = 5.0;
	real y2 = 7.0;
	ireal i = 1.0i;

	creal a = x1 + y1*i;
	creal b = x2 + y2*i;
	creal c = a / b;

	creal d = ((x1*x2 + y1*y2) + i*(x2*y1 - x1*y2)) / (x2*x2 + y2*y2);
	assert(c == d);

	d = ((x1 + i*y1)*(x2 - i*y2)) / ((x2 + i*y2)*(x2 - i*y2));
	assert(c == d);

	return 0;
}
