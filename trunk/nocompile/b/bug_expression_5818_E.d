// $HeadURL$
// $Date$
// $Author$

// @author@	David Medlock <noone@nowhere.com>
// @date@	2005-09-27
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5076

// __DSTRESS_ELINE__ 16

module dstress.nocompile.b.bug_expression_5818_E;

class X(T) {
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
	X!(Y) a = new X!(Y)();
}
