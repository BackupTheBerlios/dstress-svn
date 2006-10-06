// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.array_initialization_27_C;

int main(){
	auto a = [[1, 2], [3, 4]];

	static if(!is(typeof(a[0][0]) == int)){
		static assert(0);
	}

	if(a.length != 2){
		assert(0);
	}
	if((a[0].length != 2) || (a[1].length != 2)){
		assert(0);
	}
	if((a[0][0] != 1) || (a[0][1] != 2) || (a[1][0] != 3) || (a[1][1] != 4)){
		assert(0);
	}

	return 0;
}
