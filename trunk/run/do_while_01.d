// $HeadURL$
// $Date$
// $Author$

module dstress.run.do_while_01;

int main(){
	int test=10;
	assert(test==10);
	do{
		test--;
	}while(test>0)
	assert(test==0);
	return 0;
}
