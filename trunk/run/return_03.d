// $HeadURL$
// $Date$
// $Author$

module dstress.run.return_03;

int status;

int test(char[][] args){
	try{
		try{
			if(args.length==1){
				return -1;
			}
		}finally{
			assert(status==0);
			status+=2;
		}

		try{
			assert(0);
		}finally{
			assert(0);
		}
	}finally{
		assert(status==2);
		status+=3;
	}
	assert(0);
	return 0;
}

int main(char[][] args){
	assert(status == 0);
	assert(args.length == 1);
	assert(test(args) == -1);
	assert(status == 5);
	return 0;
}
