int main(){
	int i=0;
	assert(i==0);
	debug(1){
		assert(0);
	}
	debug(2){
		i++;
		assert(i==1);
	}
	debug(3){
		i++;
		assert(i==2);
	}
	assert(i==2);
	return 0;
}
