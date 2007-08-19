// $HeadURL$
// $Date$
// $Author$

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2004-09-06
// @uri@	news:opsdvofhixaaezs2@ilya.tec.amursk.ru
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1795

module dstress.run.alias_07;

alias int MyInt;

int main(){
	MyInt test(string c = ""){
		return 2;
	}
	if(test("abc") != 2){
		assert(0);
	}
	return 0;
}
