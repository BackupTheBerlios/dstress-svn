// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <daiphoenix@lycos.com>
// @date@	2006-08-02
// @uri@	news:bug-276-3@http.d.puremagic.com/issues/

module dstress.compile.t.template_41_B;

class C{
	template T1(){
		template T2(int i) {
			const int T2 = i + 1;
		}
	}
}

alias C.T1!().T2 inc;

static assert(inc!(2) == 3);
