// $HeadURL$
// $Date$
// $Author$

module dstress.run.switch_01;

int main(){
	int test=10;

	assert(test==10);
	switch(test){
		case 11: test*=test;
		case 10: test+=1;
		case  9: test*=2;
	}
	assert(test==22);

	return 0;
}
