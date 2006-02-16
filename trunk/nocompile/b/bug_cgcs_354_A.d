// $HeadURL$
// $Date$
// $Author$

// @author@	Lukas Pinkowski <lukas.pinkowski@web.de>
// @date@	2005-11-14
// @uri@	news:op.sz8vo9n6z1znrt@vulcan

// __DSTRESS_ELINE__ 16

module dstress.nocompile.b.bug_cgcs_354_A;

void main(){
	int i;
	ubyte[4] ub;
	ub[] = cast(ubyte[4]) &i;
}

