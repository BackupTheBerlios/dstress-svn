// $HeadURL$
// $Date$
// $Author$

// @author@	AJG <AJG@nospam.com>
// @date@	2005-09-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5027

module dstress.run.o.opCat_16_H;

int main(){
	wstring[] strings;
	strings.length = 1;
	strings[0] = "Foo";
	assert((strings ~ "Bar"w.dup).length==2);
	assert((strings ~ "Bar"w.dup)[0] == "Foo"w);
	assert((strings ~ "Bar"w.dup)[1] == "Bar"w);
	return 0;
}
