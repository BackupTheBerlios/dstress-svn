// $HeadURL$
// $Date$
// $Author$

// @author@	David Medlock <noone@nowhere.com>
// @date@	2005-09-27
// @uri@	news:dhc170$qa0$2@digitaldaemon.com

// __DSTRESS_ELINE__ 16

module dstress.nocompile.b.bug_expression_5818_H;

struct X(T) {
	void add( T val ){
		uint test = 1;
		if ( test > val ){
		}
	}
}

struct Y {
	int value;
}

void main(){
	X!(Y) a;
}
