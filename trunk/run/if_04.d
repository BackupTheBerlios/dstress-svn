// $HeadURL$
// $Date$
// $Author$

module dstress.run.if_04;

int main(){
	int value=6;
	if(value<0){
		assert(0);
	}else if(value>3){
		return 0;
	}else{
		assert(0);
	}
	return -1;
}
