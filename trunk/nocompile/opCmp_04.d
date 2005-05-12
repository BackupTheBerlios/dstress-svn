// $HeadURL$
// $Date$
// $Author$

// @author@	Uwe Salomon <post@uwesalomon.de>
// @date@	2005-04-08
// @uri@	news:opsow0pmwb6yjbe6@sandmann.maerchenwald.net

// __DSTRESS_ELINE__ 21

module dstress.nocompile.opCmp_04;

struct TestStruct{
	int opCmp(TestStruct[] t){ // no overload for TestStruct present
		return 0;
	}
}

int main(){
	TestStruct a, b;
	if(a<b){
		assert(0);
	}
	return 0;
}
