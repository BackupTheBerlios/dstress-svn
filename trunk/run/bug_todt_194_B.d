// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-02-03
// @uri@	news:cttjcg$44f$1@digitaldaemon.com

module dstress.run.bug_todt_194_B;

int main(){
	assert((new MyStruct!()).i==int.sizeof);
	return 0;
}

struct MyStruct(){
	int i=func(0).sizeof;
}

int func(...){
	return 0;
}

