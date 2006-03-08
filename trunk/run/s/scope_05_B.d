// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.scope_05_B;

int main(){
	
	int status;

	{
		scope(success) status++;
		if(++status != 1){
			assert(0);
		}
	}

	if(status != 2){
		assert(0);
	}

	return 0;
}
