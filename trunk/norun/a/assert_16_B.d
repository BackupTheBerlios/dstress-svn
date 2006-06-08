// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ release
// __DSTRESS_ELINE__ 11

module dstress.norun.a.assert_16_B;

int main(char[][] args){
	assert(args.length < 0, "some message"[1 .. 4]);

	return 0;
}
