// $HeadURL$
// $Date$
// $Author$

module dstress.run.break_09;

int status;

int test(char[][] args){

loop:	while(1){
		try{
			try{
				if(args.length==1){
					break loop;
				}
			}finally{
				assert(status==0);
				status+=2;
			}
		}finally{
			assert(status==2);
			status+=3;
		}
		return 0;
	}
	return -1;
}

int main(char[][] args){
	assert(status == 0);
	assert(args.length == 1);
	assert(test(args) == -1);
	assert(status == 5);
	return 0;
}
