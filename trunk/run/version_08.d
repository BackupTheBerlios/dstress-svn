
version = 4;

int main(){

	version(5){
		assert(0);
	}

	version(4){
		assert(1);
	}else{
		assert(0);
	}

	version(3){
		version(4){
			assert(1);
		}else{
			assert(0);
		}
	}else{
		assert(0);
	}

	return 0;
}
