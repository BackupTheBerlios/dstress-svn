// $HeadURL$
// $Date$
// $Author$

// @author@	Lars Ivar Igesund <larsivar@igesund.net>	
// @date@	2005-04-09
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3596

module dstress.run.default_argument_08;

int foo(string x = BAR){
	return x.length;
}

string BAR = "Bar";

int main(){
	if(3 != foo()){
		assert(0);
	}
	if(1 != foo("a")){
		assert(0);
	}
	if(3 != foo){
		assert(0);
	}
	BAR="ab";
	if(2 != foo()){
		assert(0);
	}
	return 0;
}
