// $HeadURL$
// $Date$
// $Author$

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2004-11-12
// @uri@	news:opshbm24dqaaezs2@ilya.tec.amursk.ru
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/2254

module dstress.run.typeid_11;

int main(){
	TypeInfo ti = typeid(creal[]);
	assert(!(ti is null));
	return 0;
}
