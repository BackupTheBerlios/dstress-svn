// $HeadURL$
// $Date$
// $Author$

module dstress.run.while_02;

int main(){
	int test=10;
	assert(test==10);
	while(test>0){
		test--;
		if(test<11){
			continue;
		}
		assert(0);
	}
	assert(test==0);
	return 0;
}
