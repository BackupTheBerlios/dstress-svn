// $HeadURL$
// $Date$
// $Author$

module dstress.run.switch_04;

int main(){
	int test=10;

	assert(test==10);
	switch(test){
		case 11:{
			test*=test;
			case 10:{
				test+=2;
			}
			test+=3;
		}case 12:{
			test+=1;
			break;
		}
		default: test*=2;
	}
	assert(test==16);

	return 0;
}
