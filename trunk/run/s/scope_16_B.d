// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.scope_16_B;

int status;

class C{
	new(size_t s){
		status++;
		return (new byte[s]).ptr;
	}
}

int main(){
	if(status != 0){
		assert(0);
	}
	C a = new C();
	if(status != 1){
		assert(0);
	}
	scope C b = new C();
	if(status != 1){
		assert(0);
	}

	return 0;
}
