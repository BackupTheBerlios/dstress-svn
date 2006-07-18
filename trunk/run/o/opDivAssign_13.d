// $HeadUR$
// $Date$
// $Author$

module dstress.run.o.opDivAssign_13;

int main(){
	idouble i=8.0i;
	i /= 4.0;

	if(i != 2.0i){
		assert(0);
	}

	return 0;
}
