// $HeadURL$
// $Date$
// $Author$

module dstress.run.goto_07;

int main(){

	int label=1;
	if(0){
label:
		int label=2;
		assert(label==2);		
	}else{
		assert(label==1);
		goto label;
	}
	assert(label==1);
	return 0;
}
