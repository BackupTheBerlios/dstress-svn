// $HeadURL$
// $Date$
// $Author$

// @author@	Miguel Ferreira Simões
// @date@	2004-12-23
// @uri@	news:cqe7j0$2fl3$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D/14003

module dstress.compile.interface_09;

interface ITest{
	static int dummy();
}

class Test : ITest{
	static int dummy(){
		return 5;
	}
}
