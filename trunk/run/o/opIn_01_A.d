// $HeadURL$
// $Date$
// $Author$

module dstress.run.o.opIn_01_A;

struct S{
	int x;
	
	int opIn(int i){
		return i + x;
	}
}

int main(){
	S s;
	s.x = 3;
	
	if(s in 5 != 8){
		assert(0);
	}

	return 0;
}
