// $HeadURL$
// $Date$
// $Author$

// @author@	AJG <AJG@nospam.com>
// @date@	2005-09-18
// @uri@	news:dgj92k$226p$1@digitaldaemon.com

module dstress.run.o.opCat_16_H;

int main(){
	wchar[][] strings;
	strings.length = 1;
	strings[0] = "Foo";
	assert((strings ~ "Bar"w).length==2);
	assert((strings ~ "Bar"w)[0] == "Foo"w);
	assert((strings ~ "Bar"w)[1] == "Bar"w);
	return 0;
}
