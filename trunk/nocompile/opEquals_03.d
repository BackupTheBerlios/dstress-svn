// $HeadURL$
// $Date$
// $Author$

// @author@	Uwe Salomon <post@uwesalomon.de>
// @date@	2005-04-08
// @uri@	news:opsow0pmwb6yjbe6@sandmann.maerchenwald.net

// __DSTRESS_ELINE__ 14

module dstress.nocompile.opEquals_03;

struct TestStruct{
	int opEquals(TestStruct[] t){ // no overload for TestStruct present
		return 0;
	}
}
