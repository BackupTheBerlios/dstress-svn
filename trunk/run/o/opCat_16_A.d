// $HeadURL$
// $Date$
// $Author$

// @author@	AJG <AJG@nospam.com>
// @date@	2005-09-18
// @uri@	news:dgj92k$226p$1@digitaldaemon.com

module dstress.run.o.opCat_16_A;

int main(){
	const static char[][] strings = ["Foo"];
	const static char[] test = "Bar";
	assert((strings ~  test).length==2);
	assert((strings ~  test)[0] == "Foo");
	assert((strings ~  test)[1] == "Bar");
	return 0;
}
