// $HeadURL$
// $Date$
// $Author$

module dstress.run.ieee_754_zerocomp_07;

int main(){
	real f1, f2;

	f1=0.0L;
	f2=-f1;
	if(f1 != f2){
		assert(0);
	}

	f1=-0.0L;
	f2=-f1;
	if(f1 != f2){
		assert(0);
	}

	return 0;
}
