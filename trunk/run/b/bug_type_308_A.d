// $HeadURL$
// $Date$
// $Author$

// @author@	<clugdbug@yahoo.com.au>
// @date@	2006-04-04
// @uri@	news:bug-84-3@http.d.puremagic.com/bugzilla/

module dstress.run.b.bug_type_308_A;

int main() {   
	int [3][3] x;
	x[1][1 .. 3] = 1;

	if(x[0][0] != 0){
		assert(0);
	}
	if(x[0][1] != 0){
		assert(0);
	}
	if(x[0][2] != 0){
		assert(0);
	}

	if(x[1][0] != 0){
		assert(0);
	}
	if(x[1][1] != 1){
		assert(0);
	}
	if(x[1][2] != 1){
		assert(0);
	}

	if(x[2][0] != 0){
		assert(0);
	}
	if(x[2][1] != 0){
		assert(0);
	}
	if(x[2][2] != 0){
		assert(0);
	}

	return 0;
}
