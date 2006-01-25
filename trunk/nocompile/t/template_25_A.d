// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-01-24
// @uri@	news:dr5v6a$2hlt$5@digitaldaemon.com

// __DSTRESS_ELINE__ 18

module dstress.nocompile.t.template_25_A;

template fn( T ) {
	void fn() {
	}
}

template fn( T ) {
	void fn( T val ) {
	}
}

void main() {
	mixin fn!(int);
}

