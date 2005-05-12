// $HeadUR$
// $Date$
// $Author$

module dstress.run.o.opMul_03;

int main(){
	ireal i=2.0Li;
	i = i * 4.0Li;
	assert(i==8.0Li);
	return 0;
}
