// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.if_12_B;

int main(){
	if(int i = 2 != 3){
		if(i != 1){
			assert(0);
		}else{
			return 0;
		}
	}else{
		assert(0);
	}

	assert(0);
}
