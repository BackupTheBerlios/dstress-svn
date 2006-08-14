// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <daiphoenix@lycos.com>
// @date@	2006-08-02
// @uri@	news:bug-276-3@http.d.puremagic.com/issues/

module dstress.compile.t.template_41_E;

struct S{
	template T1(){
		template T2() {
			const int T2 = 3;
		}
	}
}

alias S.T1!().T2 x;

static assert(x!() == 3);
