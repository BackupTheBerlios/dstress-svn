// $HeadURL$
// $Date$
// $Author$

module dstress.run.c.const_26_B;

const int a;

static this(){
	a = 1;
	a = 2;
	a = 3;
}

int main(){
	if(a != 3){
		assert(0);
	}
	return 0;
}
