// $HeadURL$
// $Date$
// $Author$

module dstress.run.in_01;

void check(in int a){
	assert(a==0);
	a++;
	assert(a==1);
}

int main(){
	int i;
	assert(i==0);
	check(i);
	assert(i==0);
	return 0;
}
