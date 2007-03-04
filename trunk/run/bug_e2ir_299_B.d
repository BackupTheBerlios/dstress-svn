// $HeadURL$
// $Date$
// $Author$

// @author@	h3r3tic <foo@bar.baz>
// @date@	2004-12-24
// @uri@	news:cqi3v3$r2o$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/2601

module dstress.run.bug_e2ir_299_B;

int main(){
	void foo() {}
	auto a = delegate void() { foo(); };
	return 0;
}
