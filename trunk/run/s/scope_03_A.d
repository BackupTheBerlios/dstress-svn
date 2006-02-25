// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.scope_03_A;

int x;

int main(){
	x = 1;

	int x;
	x = 2;

	{
		int x;
		x = 3;
		
		if(.x != 1){
			assert(0);
		}
		if(x != 3){
			assert(0);
		}
	}

	if(.x != 1){
		assert(0);
	}

	if(x != 2){
		assert(0);
	}

	return 0;
}
	
