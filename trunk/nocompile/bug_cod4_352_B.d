// $HeadURL$
// $Date$
// $Author$

// @author@	Lukas Pinkowski <Lukas.Pinkowski@web.de>
// @date@	2005-02-26
// @uri@	news:cvq9fq$qir$1@digitaldaemon.com

// __DSTRESS_ELINE__ 16

module dstress.nocompile.bug_cod4_352_B;

void check(){
	void[] bar;
	void[] foo;
	bar[0] = foo[0];
}

