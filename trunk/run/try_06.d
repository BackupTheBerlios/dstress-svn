// $HeadURL$
// $Date$
// $Author$

module dstress.run.try_06;

int main(){
	int check=0;
	assert(check==0);
	try{
	}finally{
		check++;
	}
	assert(check==1);
	return 0;
}
