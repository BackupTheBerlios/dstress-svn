// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2006-12-02
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=628
// @desc@	[Issue 628] Assertion failure: '0' on line 91 in file 'init.c'

module dstress.run.v.void_05_B;

typedef int I = 0x12_34_FF_56;

int main(){
	I x = void;
	x = x.init;

	if(x != 0x12_34_FF_56){
		assert(0);
	}

	return 0;
}
