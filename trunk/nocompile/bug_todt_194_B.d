// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-02-03
// @uri@	news:cttjcg$44f$1@digitaldaemon.com

module dstress.nocompile.bug_todt_194_B;

void main(){
	assert(new MyStruct!().i==4);
}

struct MyStruct(){
	int i=func(0).sizeof;
}

int func(...);

