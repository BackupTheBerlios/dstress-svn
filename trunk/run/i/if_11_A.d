// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.if_11_A;

int main(){
	if(auto x = 3){
		return 0;	
	}else{
		assert(0);
	}

	assert(0);
}
