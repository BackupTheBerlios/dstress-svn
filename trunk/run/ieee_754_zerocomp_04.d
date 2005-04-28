// $HeadURL$
// $Date$
// $Author$

module dstress.run.ieee_754_zerocomp_04;

int main(){
	double f1, f2;

	f1=0.0;
	f2=-f1;
	assert(f1==f2);

	f1=-0.0;
	f2=-f1;
	assert(f1==f2);

	return 0;
}
