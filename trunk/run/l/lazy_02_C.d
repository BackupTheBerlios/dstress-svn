// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @desc@	2006-12-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=749
// @desc@	[Issue 749] Internal error: toir.c 170 with lazy bool and delegate with default argument

module dstress.run.l.lazy_02_C;

bool nextis(void delegate() dgpositive = {}) {
	return true;
}

bool looping(lazy bool condition) {
	return true;
}

int main() {
	looping(looping(nextis()));
	return 0;
}
