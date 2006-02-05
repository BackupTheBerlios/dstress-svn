// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.static_if_01_A;

static if (1){
	int i = 9;
}else{
	static assert(0);
}

int main(){
	if(i == 9){
		return 0;
	}
}


