// $HeadURL$
// $Date$
// $Author$

module dstress.run.while_01;

int main(){
	int test=10;
	assert(test==10);
	while(test>0){
		test--;
	}
	assert(test==0);
	return 0;
}
