
// @author@	David Friedman <d3rdclsmail@earthlink.net>
// @date@	2004-05-01
// @uri@	news://c6v105$1flg$1@digitaldaemon.com

int status;

class ClassA{
	this(){
		status++;
		assert(status==1);
	}

	~this(){
		status--;
		assert(status==0);
	}
}

class ClassB : ClassA {}

void test(){
	auto ClassB b = new ClassB();
	
}

int main(){
	test();
	return 0;
}
