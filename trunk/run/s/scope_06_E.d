// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.scope_06_E;

int main(){
	int a;
	
	{
		scope(success){
			if(a != 10){
				assert(0);
			}

			a++;
		}

		scope(failure){
			assert(0);
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

	return 0;

}
