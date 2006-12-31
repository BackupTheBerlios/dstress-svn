// $HeadURL$
// $Date$
// $Author$

// @author@	Bill Baxter <wbaxter@gmail.com>
// @date@	2006-11-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=482
// @desc@	[Issue 482] New: _arguments for variadic not available in precondition

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.i.in_out_body_13_A;

size_t len;

void func(...)
in {
	len = _arguments.length;
}
body {

}

int main(){
	func();
	if(len != 0){
		assert(0);
	}

	func(0, 0, 1);
	if(len != 3){
		assert(0);
	}

	func(8);
	if(len != 1){
		assert(0);
	}

	return 0;
}
