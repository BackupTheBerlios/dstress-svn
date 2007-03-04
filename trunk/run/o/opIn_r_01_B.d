// $HeadURL$
// $Date$
// $Author$

module dstress.run.o.opIn_r_01_B;

class C{
	int opIn_r(int i){
		return i+1;
	}
}

int main(){
	C c = new C();
	if((3 in c) != 4){
		assert(0);
	}

	return 0;
}
