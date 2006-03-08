// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.scope_05_F;

int main(){
	
	int status;

	try{
		scope(success) status++;
		if(++status != 1){
			assert(0);
		}
		throw new Exception("msg");
	}catch(Exception e){
		if(status == 1){
			return 0;
		}
	}


	return 0;
}
