
int main(){
	int test=10;

	assert(test==10);
	try{
		switch(test){
			case 11: break;
			case 12: break;
		}
	}catch(Exception e){
		test=1;	
	}

	assert(test==1);

	return 0;
}
