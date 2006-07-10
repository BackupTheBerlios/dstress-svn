// $HeadURL$
// $Date$
// $Author$

// @author@	Sterling Christensen <sterlingchristensen@hotmail.com>
// @date@	2006-06-08
// @uri@	news:op.tcd8nfiww9vrcz@sterling

module dstress.run.b.bug_cgcod_1677_A;

int foo(char[] s){
	short shift = s.length * 3;
	int answer;

	for (size_t i = 0; i < s.length; i++){
		answer = s[i] << shift;
	}

	return answer;
}

int main(){
	if(foo("\u0001") != 8){
		assert(0);
	}

	return 0;
}
