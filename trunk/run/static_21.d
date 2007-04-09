// $HeadURL$
// $Date$
// $Author$

// @author@	h3r3tic <foo@bar.baz>
// @date@	2004-12-26
// @uri@	news:cqmmre$1vvo$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2605

module dstress.run.static_21;

void foo(){
	struct MyStruct{
		static int x;
	}
}

void foo(int i){
	struct MyStruct{
		static int x;
	}
}

int main(){
	return 0;
}