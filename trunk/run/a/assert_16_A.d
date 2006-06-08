// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.assert_16_A;

int main(char[][] args){
	assert(args.length > 0, "some message"[1 .. 4]);

	return 0;
}
