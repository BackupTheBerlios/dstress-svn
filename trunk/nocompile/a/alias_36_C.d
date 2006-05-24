// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-05-23
// @uri@	news:bug-153-3@http.d.puremagic.com/bugzilla/

// __DSTRESS_ELINE__ 22

module dstress.nocompile.a.alias_36_C;

template bar(T) {
	void foo(T t) {
	}
}

alias bar!(long).foo foo;
alias bar!(char).foo foo;

void main() {
	mixin foo!(long);
}

