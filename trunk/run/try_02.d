// $HeadURL$
// $Date$
// $Author$

module dstress.run.try_02;

int main(){
	int check=0;
	assert(check==0);
	try{
		throw new Exception("message");
	}catch(Exception){
		check++;
	}finally{
		check++;
	}
	assert(check==2);
	return 0;
}
