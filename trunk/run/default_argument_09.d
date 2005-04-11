// $HeadURL$
// $Date$
// $Author$

// @author@	Lars Ivar Igesund <larsivar@igesund.net>	
// @date@	2005-04-09
// @uri@	news:d39ij9$2bf9$1@digitaldaemon.com

module dstress.run.default_argument_09;

char [] BAR = "Bar";

int foo(char [] string = BAR){
	return string.length;
}

int main(){
	assert(foo()==3);
	assert(foo("a")==1);
	assert(foo==3);
	BAR="ab";
	assert(foo==2);
	return 0;
}
