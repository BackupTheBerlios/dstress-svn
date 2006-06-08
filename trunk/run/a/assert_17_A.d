// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.assert_17_A;

const uint a = 1;

int main(char[][] args){
	static assert(a, "some message"[1 .. 4]);

	return 0;
}
