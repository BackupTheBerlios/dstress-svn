// $HeadURL$
// $Date$
// $Author$

module dstress.run.for_01;

int main(){
	int status;

	assert(status==0);
	for(int index=0; index<10; index++){
		status++;
	}
	assert(status==10);

	return 0;
}
