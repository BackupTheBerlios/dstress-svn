// $HeadURL$
// $Date$
// $Author$

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2004-08-06
// @uri@	news:opscahl7ddaaezs2@ilya.tec.amursk.ru
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1284

module dstress.run.destructor_03;

int status;

class MyClass{
	this(){
		status++;
	}
	
	~this(){
		status--;
		throw new Exception("E2");
	}
}

int main(){
	try{
		auto MyClass m = new MyClass();
		assert(status == 1);
		delete m;
	}catch(Exception e){
		assert(status == 0);
		status--;
	}
	
	assert( status == -1 );
	return 0;
}
