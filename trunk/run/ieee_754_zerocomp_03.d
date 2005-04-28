// $HeadURL$
// $Date$
// $Author$

module dstress.run.ieee_754_zerocomp_03;

int main(){
	cfloat f1, f2;

	f1=0.0f+0.0fi;
	f2=-f1;
	assert(f1==f2);

	f1=0.0f-0.0fi;
	f2=-f1;
	assert(f1==f2);

	f1=-0.0f+0.0fi;
	f2=-f1;
	assert(f1==f2);

	f1=-0.0f-0.0fi;
	f2=-f1;
	assert(f1==f2);

	return 0;
}
