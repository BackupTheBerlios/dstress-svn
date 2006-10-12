// $HeadURL$
// $Date$
// $Author$

// @author@	BCS <fubar@pathlink.com>
// @date@	2006-10-07
// @uri@	news:eg95k2$27pi$1@digitaldaemon.com
// @desc@	name shadowing in if statement

// __DSTRESS_ELINE__ 17

module dstress.nocompile.i.if_15_A;

void foo(){
	int i;

	if(int i = 1){
	}
}
