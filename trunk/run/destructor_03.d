// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/destructor_03.d,v 1.1 2004/08/20 23:42:52 th Exp $

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2004-08-06
// @uri@	news://opscahl7ddaaezs2@ilya.tec.amursk.ru

int status;

class MyClass{
	this(){
		status++;
	}
	
	~this(){
		status++;
		status*=3;
		throw new Exception("E2");
	}
}

int main(){
	try{
		auto MyClass m = new MyClass();
		assert(status == 1);
		delete m;
	}catch(Exception e){
		assert(status == 6);
		status/=3;
		status-=2;
	}
	
	assert( status == 0 );
	return 0;
}
