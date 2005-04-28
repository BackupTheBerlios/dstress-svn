// $HeadURL$
// $Date$
// $Author$

module dstress.run.ieee_754_zerocomp_07;

int main(){
	real f1, f2;

	f1=0.0l;
	f2=-f1;
	assert(f1==f2);

	f1=-0.0l;
	f2=-f1;
	assert(f1==f2);

	return 0;
}
