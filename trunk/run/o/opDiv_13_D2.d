// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-12-06
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5771

module dstress.run.o.opDiv_13_D2;

int main() {
	uint a = 1_000_000_000;
	uint b =   100_000_000;

	assert(a / b == 10);

	return 0;
}

