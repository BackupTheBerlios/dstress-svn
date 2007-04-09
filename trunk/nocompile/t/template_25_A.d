// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-01-24
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6068

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

