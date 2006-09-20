// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant@gmail.com>
// @date@	2006-07-09
// @uri@	news:bug-247-3@http.d.puremagic.com/issues/
// @desc@	[Issue 247] Cannot return from nested functions in contracts

module dstress.run.i.in_out_body_12_A;

void foo(int dummy)
in {
	static int checkParameters(int x) {
		if(x < 0){
			return checkParameters(-x);
		}else{
			return x % 2;
		}
	}

	assert(checkParameters(dummy) == 1);
} body {
}

int main(){
	foo(5);

	return 0;
}