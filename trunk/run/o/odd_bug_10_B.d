// $HeadURL$
// $Date$
// $Author$

// @author@	notknown <notknown@none.com>
// @date@	2006-10-26
// @uri@	news:ehpvlb$uer$1@digitaldaemon.com
// @desc@	Bug from cpuid wrapper thread in D.announce: char[12] str = "";

module dstress.run.o.odd_bug_10_B;

class C{
	uint i = 1;
	char[12] str = "";
}

int main(){
	auto c = new C();
	assert(c.i == 1);
	return 0;
}
