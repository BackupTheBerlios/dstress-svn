// $HeadURL$
// $Date$
// $Author$

module dstress.run.while_03;

int main(){
	int test=10;
	assert(test==10);
	while(test>0){
		test--;
		if(test<2){
			break;
		}
	}
	assert(test==1);
	return 0;
}
