// $HeadURL$
// $Date$ 
// $Author$

// @author@	shinichiro.h <s31552@mail.ecc.u-tokyo.ac.jp>
// @date@	2004-11-12
// @uri@	news:20041112233233.3584a28f.s31552@mail.ecc.u-tokyo.ac.jp
// @uri@	nntp://digitalmars.com/D.gnu/844

module dstress.run.enum_09;

enum Enum{
	A = -1
}

int main() {
	Enum e = Enum.A;
	assert(e < 0);
	return 0;
}
