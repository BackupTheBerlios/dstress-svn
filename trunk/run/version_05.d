
int main(){
	int check=0;
	
	version(none){
		check++;
	}

	assert(check==0);

	return 0;
}
