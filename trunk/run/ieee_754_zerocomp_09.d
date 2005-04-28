// $HeadURL$
// $Date$
// $Author$

module dstress.run.ieee_754_zerocomp_09;

int main(){
	creal f1, f2;

	f1=0.0l+0.0li;
	f2=-f1;
	assert(f1==f2);

	f1=0.0l-0.0li;
	f2=-f1;
	assert(f1==f2);

	f1=-0.0l+0.0li;
	f2=-f1;
	assert(f1==f2);

	f1=-0.0l-0.0li;
	f2=-f1;
	assert(f1==f2);

	return 0;
}
