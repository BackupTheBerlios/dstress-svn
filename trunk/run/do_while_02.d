
int main(){
	int test=10;
	assert(test==10);
	do{
		test--;
		if(test<20){
			continue;
		}
		assert(0);
	}while(test>0)
	assert(test==0);
	return 0;
}
