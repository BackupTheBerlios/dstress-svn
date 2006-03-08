// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.scope_06_A;

int main(){
	int a;
	int b;
	
	{
		scope(exit){
			if(a != 10){
				assert(0);
			}
			
			if(b != 6){
				assert(0);
			}

			a++;
		}

		if(b!=0){
			assert(0);
		}else{
			b = 5;
		}

		scope(exit){
			if(a != 10){
				assert(0);
			}
			
			if(b != 5){
				assert(0);
			}
			
			b++;
		}

		
		if(a!=0){
			assert(0);
		}else{
			a = 10;
		}
	}

	if(a != 11){
		assert(0);
	}

	if(b != 6){
		assert(0);
	}

	return 0;

}
