// $HeadURL$
// $Date$
// $Author$

// @author@	h3r3tic <foo@bar.baz>
// @date@	2004-12-24
// @uri@	news:cqi3v3$r2o$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2601

module dstress.run.bug_e2ir_299_A;

int main(){
	void foo() {}
	void function() bar = function void() {
		foo();
	};
	return 0;
}