// $HeadURL$
// $Date$
// $Author$

module dstress.run.goto_09;

int main(){
	if(0){
label:
		return 0;
	}else{
		goto label;
	}
	assert(0);
}
