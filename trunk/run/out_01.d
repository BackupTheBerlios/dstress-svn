// $HeadURL$
// $Date$
// $Author$

module dstress.run.out_01;

void check(out int x){
}

int main(){
	int y=2;
	assert(y==2);
	check(y);
	assert(y==0);
	return 0;
}
