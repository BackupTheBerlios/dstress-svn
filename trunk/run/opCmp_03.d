// $HeadURL$
// $Date$
// $Author$

// @author@	Uwe Salomon <post@uwesalomon.de>
// @date@	2005-04-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3559

module dstress.run.opCmp_03;

struct TestStruct{
	int opCmp(TestStruct[] t){
		return 0;
	}
	
	int opCmp(TestStruct t){
		return 0;
	}
}

int main(){
	TypeInfo ti = typeid(TestStruct);
	return 0;
}
