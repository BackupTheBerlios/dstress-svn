// $HeadURL$
// $Date$
// $Author$

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2004-09-06
// @uri@	news:opsdvofhixaaezs2@ilya.tec.amursk.ru
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/1795

module dstress.run.alias_07;

alias int MyInt;

int main(){
	MyInt test(char[] c=""){
		return 2;
	}
	assert(test("abc")==2);
	return 0;
}
