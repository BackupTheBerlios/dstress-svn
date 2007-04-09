// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-12-06
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5771

module dstress.run.o.opDiv_13_D1;

int main() {
	const uint a = 1_000_000_000;
	const uint b =   100_000_000;

	static assert(a / b == 10);

	return 0;
}

