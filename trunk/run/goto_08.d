// $HeadURL$
// $Date$
// $Author$

module dstress.run.goto_08;

int main(char[][] arg){

	assert(arg.length==1);

	if(arg.length!=1){
label:
		return 0;
	}else{
		goto label;
	}
	assert(0);
}
