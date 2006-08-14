// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <daiphoenix@lycos.com>
// @date@	2006-08-02
// @uri@	news:bug-276-3@http.d.puremagic.com/issues/

module dstress.compile.t.template_41_D;

template T1(){
	template T2() {
		template T3(){
			const int T3 = 3;
		}
	}
}

alias T1!().T2!().T3 x;

static assert(x!() == 3);
