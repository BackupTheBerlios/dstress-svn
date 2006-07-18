// $HeadUR$
// $Date$
// $Author$

module dstress.run.o.opMulAssign_12;

int main(){
	ifloat i=2.0fi;
	i *= 4.0f;

	if(i != 8.0fi){
		assert(0);
	}

	return 0;
}
