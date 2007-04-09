// $HeadURL$
// $Date$
// $Author$

// @author@	AJG <AJG@nospam.com>
// @date@	2005-09-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5027

module dstress.run.o.opCat_16_G;

int main(){
	dchar[][] strings;
	strings.length = 1;
	strings[0] = "Foo";
	assert((strings ~ "Bar"d).length==2);
	assert((strings ~ "Bar"d)[0] == "Foo"d);
	assert((strings ~ "Bar"d)[1] == "Bar"d);
	return 0;
}
