// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.scope_06_K;

class X{
}

int main(){
	int a;
	
	try{
		scope(failure){
			if(a != 11){
				assert(0);
			}

			a++;
		}

		scope(success){
			assert(0);
		}

		scope(exit){
			if(a != 10){
				assert(0);
			}

			a++;
		}
		
		if(a!=0){
			assert(0);
		}else{
			a = 10;
		}

		throw new X();
	}catch(X x){
		if(a != 12){
			assert(0);
		}

		return 0;
	}

	assert(0);
}
