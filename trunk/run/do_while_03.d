
int main(){
	int test=10;
	assert(test==10);
	do{
		test--;
		if(test<2){
			break;
		}
	}while(test>0)
	assert(test==1);
	return 0;
}
