// $HeadURL$
// $Date$
// $Author$

// @author@	David Medlock <noone@nowhere.com>
// @date@	2006-07-08
// @uri@	news:e8narj$2h1s$1@digitaldaemon.com
// @desc@	Initialization error in classes

module dstress.run.o.odd_bug_06_B;

struct Foo{
	float[4] array = 1.0f;
	int count = 10;
}

int main(){
	Foo f;

	if(f.count != 10){
		assert(0);
	}

	if(f.array.length != 4){
		assert(0);
	}
	if(f.array[0] != 1.0f){
		assert(0);
	}
	if(f.array[1] != 1.0f){
		assert(0);
	}
	if(f.array[2] != 1.0f){
		assert(0);
	}
	if(f.array[3] != 1.0f){
		assert(0);
	}

	return 0;
}
