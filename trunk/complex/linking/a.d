// $HeadURL$
// $Date$
// $Author$

// @author@	"Ben Hinkle" <ben.hinkle@gmail.com>
// @date@	2004-12-07
// @uri@	news:cp2vjj$1ljt$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs

module dstress.complex.linking.a;

struct StructA(T){
	void set(T x) {
		y = x;
	}
	T y;
}

