// $HeadURL$
// $Date$
// $Author$

module dstress.run.try_03;

int main(){
	int check=0;
	assert(check==0);
	try{
	}catch(Exception){
		check++;
	}finally{
		check++;
	}
	assert(check==1);
	return 0;
}
