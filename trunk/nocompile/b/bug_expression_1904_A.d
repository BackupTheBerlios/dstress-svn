// $HeadURL$
// $Date$
// $Author$

// @author@	Alexander Panek <a.panek@brainsware.org>
// @date@	2007-01-01
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=828
// @desc@	[Issue 828] expression.c:1904: virtual Expression* ThisExp::semantic(Scope*): Assertion `global.errors || var' failed.

module dstress.nocompile.b.bug_expression_1904_A;

class A{
	void func(){
		Object o = cast(typeof(this.classinfo))null;
	}
}

void main(){
	A = new A;
	A.func();
}
