int main(){
	int i;
	assert(i==0);
	debug(a){
		i++;
		assert(i==1);
	}
	debug(b){
		i++;
		assert(0);
	}
	assert(i==1);
	return 0;
}

