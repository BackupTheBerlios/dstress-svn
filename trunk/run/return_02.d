// $HeadURL$
// $Date$
// $Author$

module dstress.run.return_02;

int status;

int test(){
	try{
		return -1;
	}finally{
		status++;
	}
}

int main(){
	assert(status == 0);
	assert(test() == -1);
	assert(status == 1);
	return 0;
}
