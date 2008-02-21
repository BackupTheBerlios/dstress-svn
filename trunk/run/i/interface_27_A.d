// $HeadURL$
// $Date$
// $Author$

// @author@	<default_357-line@yahoo.de>
// @date@	2007-06-13
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1264
// @desc@	[Issue 1264] New: anon class in anon delegate in private member == ICE

module dstress.run.i.interface_27_A;

interface I{
	int foo();
}

int main() {
	int check = 0x1234ABCD;

	I o = null;
	
	(){
		o = new class I{
			int foo() {
				return 1 + check;
			}
		};
	}();

	if(0x1234ABCE != o.foo()){
		assert(0);
	}
	if(0x1234ABCD != check){
		assert(0);
	}

	return 0;
}
