// $HeadURL$
// $Date$
// $Author$

// @author@	notknown <notknown@none.com>
// @date@	2006-10-26
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=8856
// @desc@	Bug from cpuid wrapper thread in D.announce: char[12] str = "";

module dstress.run.o.odd_bug_10_C;

class C{
	char[12] str;
	uint i = 1;
}

int main(){
	auto c = new C();
	assert(c.i == 1);
	return 0;
}
