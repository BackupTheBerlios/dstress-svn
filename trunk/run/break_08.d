// $HeadURL$
// $Date$
// $Author$

module dstress.run.break_08;

int status;

int test(string[] args){
loop:	while(1){	
		try{
			try{
				if(args.length==1){
					break loop;
				}
			}finally{
				if(0 != status){
					assert(0); 
				}
				status+=2;
			}

			try{
				assert(0);
			}finally{
				assert(0);
			}
		}finally{
			if(2 != status){
				assert(0);
			}
			status+=3;
		}
		assert(0);
		return 0;
	}
	return -1;
}

int main(string[] args){
	if(0 != status ){
		assert(0); 
	}
	if(1 != args.length ){
		assert(0); 
	}
	if(-1 != test(args) ){
		assert(0);
	}
	if(5 != status ){
		assert(0);
	}
	return 0;
}
