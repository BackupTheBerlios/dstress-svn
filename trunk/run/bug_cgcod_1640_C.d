// $HeadURL$
// $Date$
// $Author$

// @author@	h3r3tic <foo@bar.baz>
// @date@	2004-12-25
// @uri@	news:cqihjc$16c8$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2602

module dstress.run.bug_cgcod_1640_C;

// __DSTRESS_DFLAGS__ -O

struct MyStruct{
	int a;
}

void bar() {}

int main(){
	MyStruct[] arr;
	foreach(MyStruct a; arr){
		bar();
	}
	return 0;
}
