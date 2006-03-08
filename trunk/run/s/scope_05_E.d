// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.scope_05_E;

int main(){
	
	int status;

	try{
		scope(exit) status++;
		if(++status != 1){
			assert(0);
		}
		throw new Exception("msg");
	}catch(Exception e){
		if(status == 2){
			return 0;
		}
	}


	return 0;
}
