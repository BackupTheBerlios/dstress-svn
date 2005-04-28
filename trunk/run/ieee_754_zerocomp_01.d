// $HeadURL$
// $Date$
// $Author$

module dstress.run.ieee_754_zerocomp_01;

int main(){
	float f1, f2;

	f1=0.0f;
	f2=-f1;
	assert(f1==f2);

	f1=-0.0f;
	f2=-f1;
	assert(f1==f2);

	return 0;
}
