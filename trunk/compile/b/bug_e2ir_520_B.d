// $HeadURL$
// $Date$
// $Author$

// @author@	Rueschi <rueschi@giquadrat.de>
// @date@	2007-01-09
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=826
// @desc@	[Issue 826] ICE: is-expression with invalid template instantiation

module dstress.compile.b.bug_e2ir_520_B;

class Templ(T){
	this(){
		unknown_identifier;
	}
}

static assert(false == is(Templ!(int)));
