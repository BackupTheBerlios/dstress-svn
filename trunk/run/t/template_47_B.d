// $HeadURL$
// $Date$
// $Author$

// @author@	Nazo Humei <lovesyao@hotmail.com>
// @date@	2006-11-19
// @uri@	news:bug-571-3@http.d.puremagic.com/issues/
// @desc@	[Issue 571] New: class instance member template returns strange value

module dstress.run.t.template_47_B;

class Test{
	template test(){
		const int test = 0x12_AA_34_FF;
	}
}

int main(){
	assert(Test.test!() == 0x12_AA_34_FF);
	assert((new Test()).test!() == 0x12_AA_34_FF);

	return 0;
}
