// $HeadURL$
// $Date$
// $Author$

// @author@	Lars Ivar Igesund <larsivar@igesund.net>	
// @date@	2005-04-09
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3596

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
