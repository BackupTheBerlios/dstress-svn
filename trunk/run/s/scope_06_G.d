// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.scope_06_G;

int main(){
	int a;
	
	try{
		scope(failure){
			if(a != 10){
				assert(0);
			}

			a++;
		}
		
		scope(success){
			assert(0);
		}

		if(a!=0){
			assert(0);
		}else{
			a = 10;
		}

		throw new Exception("msg");
	}catch(Exception e){
		if(a != 11){
			assert(0);
		}

		return 0;
	}

	assert(0);

}
