// $HeadURL$
// $Date$
// $Author$

module dstress.run.ieee_754_zerocomp_08;

int main(){
	ireal f1, f2;

	f1=0.0li;
	f2=-f1;
	assert(f1==f2);

	f1=-0.0li;
	f2=-f1;
	assert(f1==f2);

	return 0;
}
