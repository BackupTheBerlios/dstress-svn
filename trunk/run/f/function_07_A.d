// $HeadURL$
// $Date$
// $Author$

// @author@	BCS <BCS@pathlink.com>
// @date@	2006-06-05
// @uri@	news:e62g7t$1084$1@digitaldaemon.com

module dstress.run.f.function_07_A;

struct S{
	static int inc(int i){
		return i + 1;
	}
}

int main(){
	int function(int) f;
	S s;

	with(s){
		f = &inc;
	}

	if(f(2) != 3){
		assert(0);
	}

	return 0;
}

