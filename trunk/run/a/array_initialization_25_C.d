// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.array_initialization_25_C;

int main(){
	auto a = [0, 1, 2];

	static if(!is(typeof(a[0]) == int)){
		assert(0);
	}
	if(a.length != 3){
		assert(0);
	}
	if((a[0] != 0) || (a[1] != 1) || (a[2] != 2)){
		assert(0);
	}
	

	return 0;
}
