// $HeadURL$
// $Date$
// $Author$

module dstress.run.ieee_754_zerocomp_02;

int main(){
	ifloat f1, f2;

	f1=0.0fi;
	f2=-f1;
	assert(f1==f2);

	f1=-0.0fi;
	f2=-f1;
	assert(f1==f2);

	return 0;
}
