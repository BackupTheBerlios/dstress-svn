// $HeadURL$
// $Date$
// $Author$

module dstress.run.out_02;

void check(out int i){
	assert(i==0);
	i=2;
}

int main(){
	int i=1;
	assert(i==1);
	check(i);
	assert(i==2);
	return 0;
}
