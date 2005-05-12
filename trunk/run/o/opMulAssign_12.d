// $HeadUR$
// $Date$
// $Author$

module dstress.run.o.opMulAssign_12;

int main(){
	ifloat i=2.0fi;
	i *= 4.0f;

	assert(i==8.0fi);

	return 0;
}
