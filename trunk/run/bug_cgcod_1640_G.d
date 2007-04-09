// $HeadURL$
// $Date$
// $Author$

// @author@	h3r3tic <foo@bar.baz>
// @date@	2004-12-25
// @uri@	news:cqihjc$16c8$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2602

module dstress.run.bug_cgcod_1640_G;

struct MyStruct{
	int a, b, c, d;
}

void bar() {}

int main(){
	MyStruct[] arr;
	foreach(MyStruct a; arr){
		bar();
	}
	return 0;
}
