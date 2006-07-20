// $HeadURL$
// $Date$
// $Author$

module dstress.run.c.const_26_A;

const int a, b;

static this(){
	a = b + 1;
	b = a + 1;
	a = b + 1;
}

int main(){
	if(a != 3){
		assert(0);
	}
	if(b != 2){
		assert(0);
	}
	return 0;
}
