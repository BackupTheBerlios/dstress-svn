// $HeadURL$
// $Date$
// $Author$

// @author@     Ben Hinkle <ben.hinkle@gmail.com>
// @date@       2004-12-07
// @uri@        news:cp2vjj$1ljt$1@digitaldaemon.com
// @url@        nntp://news.digitalmars.com/digitalmars.D.bugs

module dstress.complex.linking.b;

import dstress.complex.linking.a;

void functB() {
	StructA!(int)* x;
	x = new StructA!(int);
	x.set(10);
}

