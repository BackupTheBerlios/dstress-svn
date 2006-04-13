// $HeadURL$
// $Date$
// $Author$

module dstress.run.ieee_754_zerocomp_08;

int main(){
	ireal f1, f2;

	f1=0.0Li;
	f2=-f1;
	if(f1 != f2){
		assert(0);
	}

	f1=-0.0Li;
	f2=-f1;
	if(f1 != f2){
		assert(0);
	}

	return 0;
}
