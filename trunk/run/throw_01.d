
int main(){
	int status=0;
	try{
		throw new Exception("a");
	}catch{
		status=1;
	}
	assert(status==1);
	return 0;
}
