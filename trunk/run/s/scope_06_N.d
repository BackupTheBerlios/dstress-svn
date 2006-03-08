// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.scope_06_N;

int main(){
	int a;
	
	try{
		if(a!=0){
			assert(0);
		}else{
			a = 10;
		}

		scope(exit){
			if(a != 10){
				assert(0);
			}

			a++;
		}

		scope(success){
			assert(0);
		}


		throw new Exception("msg");

		scope(failure){
			return 1;
		}
	}catch(Exception e){
		if(a != 11){
			assert(0);
		}

		return 0;
	}

	assert(0);

}
