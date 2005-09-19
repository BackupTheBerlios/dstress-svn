// $HeadURL$
// $Date$
// $Author$

// @author@	AJG <AJG@nospam.com>
// @date@	2005-09-18
// @uri@	news:dgj92k$226p$1@digitaldaemon.com

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
