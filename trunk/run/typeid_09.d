// $HeadURL$
// $Date$
// $Author$

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2004-11-12
// @uri@	news:opshbm24dqaaezs2@ilya.tec.amursk.ru
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2254

module dstress.run.typeid_09;

int main(){
	TypeInfo ti = typeid(idouble[]);
	assert(!(ti is null));
	return 0;
}
