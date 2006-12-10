// $HeadURL$
// $Date$
// $Author$

// @author@	Kazuhiro Inaba <kinaba@is.s.u-tokyo.ac.jp>
// @date@	2006-12-03
// @uri@	news:bug-640-3@http.d.puremagic.com/issues/
// @desc@	[Issue 640] New: Strage error messages around structInstance.init

module dstress.run.b.expression_4154_C;

struct S {
	int i = 2;
}

int main(){
	const S s = {1};

	S x = s.init;

	if(x.i != 2){
		assert(0);
	}

	return 0;
}

