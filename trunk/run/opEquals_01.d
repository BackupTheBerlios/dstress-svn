// $HeadURL$
// $Date$
// $Author$

// @author@	Uwe Salomon <post@uwesalomon.de>
// @date@	2005-04-08
// @uri@	news:opsow0pmwb6yjbe6@sandmann.maerchenwald.net

module dstress.run.opEquals_01;

struct TestStruct{
	int opEquals(TestStruct[] t){
		return 0;
	}
	
	int opEquals(TestStruct t){
		return 0;
	}
}

int main(){
	TypeInfo ti = typeid(TestStruct);
	return 0;
}
