// $HeadUR$
// $Date$
// $Author$

module dstress.run.o.opDiv_06;

int main(){
	ireal i=8.0fi;
	i = i / 4.0f;

	assert(i==2.0fi);

	return 0;
}
