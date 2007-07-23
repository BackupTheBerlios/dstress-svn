// $HeadURL$
// $Date$
// $Author$

module dstress.run.r.ref_01_A;


void test(ref int x){
	if(3 != x){
		assert(0);
	}
	x++;
}

int main(){
	int x = 3;
	test(x);
	if(4 != x){
		assert(0);
	}

	return 0;
}
