// $HeadURL$
// $Date$
// $Author$

module dstress.run.goto_07;

int main(){

	int a = 1;
	if(0){
a:
		int b = 2;
		assert(b == 2);
	}else{
		assert(a == 1);
		goto a;
	}
	assert(a == 1);
	return 0;
}
