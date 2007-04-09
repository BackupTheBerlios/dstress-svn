// $HeadURL$
// $Date$
// $Author$

// @author@	Uwe Salomon <post@uwesalomon.de>
// @date@	2005-04-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3559

// __DSTRESS_ELINE__ 21

module dstress.nocompile.opEquals_03;

struct TestStruct{
	bool opEquals(TestStruct[] t){ // no overload for TestStruct present
		return 0;
	}
}

int main(){
	TestStruct a, b;
	if(a==b){
		assert(0);
	}
	return 0;
}
