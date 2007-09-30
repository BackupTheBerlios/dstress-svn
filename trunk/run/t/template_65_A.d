// $HeadURL$
// $Date$
// $Author$

// @author@	<samukha@voliacable.com>
// @date@	2007-09-07
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1532
// @desc@	[Issue 1532] Template instance cannot use class locals as template parameters

module dstress.run.t.template_65_A;

class C{
	template T(alias local){
		int T(){
			return local;
		}
	}

	int foo(){
		return 0x12_AB_34_EF;
	}

	alias T!(foo) bar;
}

int main(){
	C c = new C();
	if(0x12_AB_34_EF != c.bar()){
		assert(0);
	}
	return 0;
}
