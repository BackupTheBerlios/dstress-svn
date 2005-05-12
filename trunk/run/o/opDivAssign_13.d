// $HeadUR$
// $Date$
// $Author$

module dstress.run.o.opDivAssign_13;

int main(){
	idouble i=8.0i;
	i /= 4.0;

	assert(i==2.0i);

	return 0;
}
