// $HeadURL$
// $Date$
// $Author$

// @author@	AJG <AJG@nospam.com>
// @date@	2005-09-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5027

module dstress.run.o.opCat_17_B;

int main(){
	static char[][] strings = ["Foo"];
	static char[] test = "Bar";
	assert((strings ~ test).length==2);
	assert((strings ~ test)[0] == "Foo");
	assert((strings ~ test)[1] == "Bar");
	return 0;
}
