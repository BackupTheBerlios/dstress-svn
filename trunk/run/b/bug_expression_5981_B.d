// $HeadURL$
// $Date$
// $Author$

// @author@	Kazuhiro Inaba <kinaba@is.s.u-tokyo.ac.jp>
// @date@	2006-12-03
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=641
// @desc@	[Issue 641] New: Complex string operations in template argument ICEs dmd

module dstress.run.b.bug_expression_5981_B;

int main(){
	auto x = ([""]~[])[0];

	if(is(typeof(x) : string)){
		return 0;
	}

	assert(0);
}
