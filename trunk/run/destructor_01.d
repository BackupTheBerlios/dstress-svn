// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/destructor_01.d,v 1.1 2004/08/20 23:42:52 th Exp $

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
