// $HeadURL$
// $Date$
// $Author$

// @author@	Simon Buchan <currently@no.where>
// @date@	2004-11-29
// @uri@        news:opsh702et0jccy7t@simon.homenet
// @uri@	nntp://news.digitalmars.com/digitalmars.D.bugs/2369

module dstress.run.typeid_83;

TypeInfo ti_a1 = typeid(int),
          ti_a2 = typeid(int),
          ti_a3 = typeid(uint);

int main() {
	assert(!(ti_a1 is null));
	assert(!(ti_a2 is null));
	assert(!(ti_a3 is null));
	return 0;
}


