
version = AA;

int main(){
	int check=0;
	
	version(CC){
		check++;
	}

	assert(check==1);

	return 0;
}

version(BB){
	version = DD;
}else{
	version = CC;
}
