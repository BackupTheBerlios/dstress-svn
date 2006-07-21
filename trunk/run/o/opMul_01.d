// $HeadUR$
// $Date$
// $Author$

module dstress.run.o.opMul_01;

int main(){
	ifloat i=2.0fi;
	i = i * 4.0f;

	if(i != 8.0fi){
		assert(0);
	}

	return 0;
}
