// $HeadURL$
// $Date$
// $Author$

module dstress.run.switch_05;

int main(){
	int test=10;

	assert(test==10);
	switch(test){
		case 11: break;
		case 12,10,9:{
			test+=6;
		}
	}
	assert(test==16);

	return 0;
}
