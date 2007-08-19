// $HeadURL$
// $Date$
// $Author$

// @author@	AJG <AJG@nospam.com>
// @date@	2005-09-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5027

module dstress.run.o.opCat_16_C;

int main(){
	string[] strings;
	strings.length = 1;
	strings[0] = "Foo";
	string test = "Bar";
	if(2 != (strings ~ test).length){
		assert(0);
	}
	if("Foo" != (strings ~ test)[0]){
		assert(0);
	}
	if("Bar" != (strings ~ test)[1]){
		assert(0);
	}
	return 0;
}
