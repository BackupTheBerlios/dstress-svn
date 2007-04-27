// $HeadURL$
// $Date$
// $Author$

module dstress.run.r.ref_01_A;

void test(ref int i){
	i++;
}

int main(){
	int i = 2;
	test(i);
	if(3 != i){
		assert(0);
	}

	return 0;
}
