// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.if_11_B;

int main(){
	if(auto x = 0){
		assert(0);
	}else{
		return 0;
	}

	assert(0);
}
