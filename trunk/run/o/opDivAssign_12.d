// $HeadUR$
// $Date$
// $Author$

module dstress.run.o.opDivAssign_12;

int main(){
	ifloat i=8.0fi;
	i /= 4.0f;

	if(i != 2.0fi){
		assert(0);
	}

	return 0;
}
