// $HeadURL$
// $Date$
// $Author$

module dstress.run.try_07;

int main(){
	int check=0;
	assert(check==0);
	try{
		throw new Exception("mesg");
	}catch{
		check++;
	}
	assert(check==1);
	return 0;
}
