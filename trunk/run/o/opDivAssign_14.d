// $HeadUR$
// $Date$
// $Author$

module dstress.run.o.opDivAssign_14;

int main(){
	ireal i=8.0Li;
	i /= 4.0L;

	if(i != 2.0Li){
		assert(0);
	}

	return 0;
}
