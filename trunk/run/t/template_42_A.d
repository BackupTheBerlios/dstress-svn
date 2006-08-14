// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <daiphoenix@lycos.com>
// @date@	2006-08-01
// @uri@	news:bug-274-3@http.d.puremagic.com/issues/
// @desc@	[Issue 274] Different template alias arguments are treated as the same.

module dstress.run.t.template_42_A;

class Foo {
}

class Bar {
}

template aliastest(alias A) {
	char[] aliastest() {
		return (new A!().al).classinfo.name;
	}
}

template outerBox(alias A) {
	template box() {
		alias A al;
	}
}

int main() {
	if(aliastest!(outerBox!(Foo).box) ()[$-3 .. $] != "Foo"){
		assert(0);
	}
	if(aliastest!(outerBox!(Bar).box) ()[$-3 .. $] != "Bar"){
		assert(0);
	}
	return 0;
}

