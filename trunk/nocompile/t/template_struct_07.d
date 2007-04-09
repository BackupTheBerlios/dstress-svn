// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-01-24
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6068

// __DSTRESS_ELINE__ 18

module dstress.nocompile.t.template_struct_07;

struct S( T ) {
	void fn() {
	}
}

struct S( T ) {
	void fn( T val ) {
	}
}

void main() {
	S!(int) s;
}

