// $HeadURL$
// $Date$
// $Author$

module dstress.run.o.opIn_01_B;

class S{
	int x;
	
	int opIn(int i){
		return i + x;
	}
}

int main(){
	S s = new S();
	s.x = 3;
	
	if(s in 5 != 8){
		assert(0);
	}

	return 0;
}
