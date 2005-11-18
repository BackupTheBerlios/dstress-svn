// $HeadURL$
// $Date$
// $Author$

// @author@	Lukas Pinkowski <lukas.pinkowski@web.de>
// @date@	2005-11-14
// @uri@	news:op.sz8vo9n6z1znrt@vulcan

module dstress.run.b.bug_cgcs_354_B;

int main(){
	int i;
	ubyte[] ub;
	ub.length = 4;
	ub[] = cast(ubyte[4]) &i;
	return 0;
}

