// $HeadURL$
// $Date$
// $Author$

module dstress.run.ieee_754_zerocomp_05;

int main(){
	idouble f1, f2;

	f1=0.0i;
	f2=-f1;
	assert(f1==f2);

	f1=-0.0i;
	f2=-f1;
	assert(f1==f2);

	return 0;
}
