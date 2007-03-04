// $HeadURL$
// $Date$
// $Author$

module dstress.run.o.opIn_r_01_A;

struct S{
	int opIn_r(int i){
		return i+1;
	}
}

int main(){
	S s;
	if((3 in s) != 4){
		assert(0);
	}

	return 0;
}
