// $HeadURL$
// $Date$
// $Author$

// SwitchError should be a sub-class of Error witch in turn is a sub-class of Exception

module dstress.run.switch_03;

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
	}catch{
		test=0;
	}

	assert(test==1);

	return 0;
}
