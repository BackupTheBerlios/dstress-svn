
int main(){
	int check=0;
	assert(check==0);
	try{
		throw new Exception("message");
	}catch(Exception){
		check++;
	}
	assert(check==1);
	return 0;
}
