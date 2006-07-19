// $HeadURL$
// $Date$
// $Author$

module dstress.run.bool_01;

int main(){
	bool a;
	if(a.max != 1){
		assert(0);
	}
	if(a.min != 0){
		assert(0);
	}
	if(a.init != 0){
		assert(0);
	}

	if(a.sizeof != typeid( bool ).tsize()){
		assert(0);
	}

	a = true;
	if(a != 1){
		assert(0);
	}
	bool b = 1;
	if(b != 1){
		assert(0);
	}

	bool c = false;
	if(c != 0){
		assert(0);
	}

	bool d = 0;
	if(d != 0){
		assert(0);
	}

	return 0;
}
