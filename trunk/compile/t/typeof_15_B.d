// $HeadURL$
// $Date$
// $Author$

// @author@	Nazo Humei <lovesyao@hotmail.com>
// @date@	2006-11-19
// @uri@	news:bug-572-3@http.d.puremagic.com/issues/
// @desc@	[Issue 572] New: syntax error when using template instantiation with typeof

module dstress.compile.t.typeof_15_B;

class Test{
	static template T(){
		const int T = 2;
	}
}

static assert(Test.T!() == 2); 

