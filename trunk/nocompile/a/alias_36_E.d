// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-05-23
// @uri@	news:bug-153-3@http.d.puremagic.com/bugzilla/

// __DSTRESS_ELINE__ 19

module dstress.nocompile.a.alias_36_E;

template bar(T) {
	void foo() {
	}
}

alias bar!(long).foo foo;
alias bar!(char).foo foo;

void main() {
	foo();
}

