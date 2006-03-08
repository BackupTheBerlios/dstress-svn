// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.if_12_A;

int main(){
	if(int i = 2 > 3){
		assert(0);
	}else{
		return 0;
	}

	assert(0);
}
