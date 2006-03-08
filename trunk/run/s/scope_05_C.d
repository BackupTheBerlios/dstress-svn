// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.scope_05_C;

int main(){
	
	int status;

	{
		scope(failure) status++;
		if(++status != 1){
			assert(0);
		}
	}

	if(status != 1){
		assert(0);
	}

	return 0;
}
