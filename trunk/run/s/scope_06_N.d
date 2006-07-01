// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.scope_06_N;

class X{
}

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


		throw new X();

		scope(failure){
			assert(0);
		}
	}catch(X x){
		if(a != 11){
			assert(0);
		}

		return 0;
	}

	assert(0);

}
