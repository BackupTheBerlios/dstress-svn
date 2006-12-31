// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant@gmail.com>
// @date@	2006-07-09
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=247
// @desc@	[Issue 247] Cannot return from nested functions in contracts

module dstress.run.i.in_out_body_12_C;

int foo(int dummy)
out(result){
	static int checkParameters(int x) {
		if(x < 0){
			return checkParameters(-x);
		}else{
			return x % 2;
		}
	}

	assert(checkParameters(result) == 1);
} body {
	return dummy+1;
}

int main(){
	foo(4);

	return 0;
}
