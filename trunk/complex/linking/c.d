// $HeadURL$
// $Date$
// $Author$

// @author@     Ben Hinkle <ben.hinkle@gmail.com>
// @date@       2004-12-07
// @uri@        news:cp2vjj$1ljt$1@digitaldaemon.com
// @url@        nntp://news.digitalmars.com/digitalmars.D.bugs

module dstress.complex.linking.c;

import dstress.complex.linking.a;
import dstress.complex.linking.b;

void functC() {
	StructA!(int)* x;
	x = new StructA!(int);
	x.set(100);
}

int main() {
	functB();
	functC();
	return 0;
}

