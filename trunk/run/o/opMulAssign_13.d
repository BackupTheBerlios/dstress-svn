// $HeadUR$
// $Date$
// $Author$

module dstress.run.o.opMulAssign_13;

int main(){
	idouble i=2.0i;
	i *= 4.0;

	assert(i==8.0i);

	return 0;
}
