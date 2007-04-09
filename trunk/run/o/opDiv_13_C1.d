// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-12-06
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5771

module dstress.run.o.opDiv_13_C1;

int main() {
	const int a = 1_000_000_000;
	const int b =   100_000_000;

	static assert(a / b == 10);

	return 0;
}

