// $HeadURL$
// $Date$
// $Author$

// @author@	Miguel Ferreira Simões <Kobold@netcabo.pt>
// @date@	2004-12-23
// @uri@	news:cqe7j0$2fl3$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D/14003

module dstress.run.interface_10;

interface ITest{
	static int dummy();
}

class Test : ITest{
	static int dummy(){
		return 5;
	}
}

int main(){
	Test t = new Test();
	assert(t.dummy()==5);
	return 0;
}
