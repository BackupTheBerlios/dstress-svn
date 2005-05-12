// $HeadUR$
// $Date$
// $Author$

module dstress.run.o.opDivAssign_14;

int main(){
	ireal i=8.0Li;
	i /= 4.0L;

	assert(i==2.0Li);

	return 0;
}
