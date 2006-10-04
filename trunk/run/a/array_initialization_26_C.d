// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.array_initialization_26_B;

int main(){
	auto a = new int [][](1, 1);

	static if(!is(typeof(a[0][0]) == int)){
		static assert(0);
	}

	if((a.length != 1) || (a[0].length != 1)){
		assert(0);
	}
	if(a[0][0] != 0){
		assert(0);
	}

	return 0;
}
