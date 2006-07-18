// $HeadUR$
// $Date$
// $Author$

module dstress.run.o.opMulAssign_14;

int main(){
	ireal i=2.0Li;
	i *= 4.0L;

	if(i != 8.0Li){
		assert(0);
	}

	return 0;
}
