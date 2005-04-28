// $HeadURL$
// $Date$
// $Author$

module dstress.run.ieee_754_zerocomp_06;

int main(){
	cdouble f1, f2;

	f1=0.0+0.0i;
	f2=-f1;
	assert(f1==f2);

	f1=0.0-0.0i;
	f2=-f1;
	assert(f1==f2);

	f1=-0.0+0.0i;
	f2=-f1;
	assert(f1==f2);

	f1=-0.0-0.0i;
	f2=-f1;
	assert(f1==f2);

	return 0;
}
