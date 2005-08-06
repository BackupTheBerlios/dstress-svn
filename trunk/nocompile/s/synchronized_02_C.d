// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-08-05
// @uri@	news:dd0p34$a82$1@digitaldaemon.com

// __DSTRESS_ELINE__  15

module dtsress.nocompile.s.synchronized_02_C;

void main(){
	synchronized(
			foo
		)
	{
		Object foo;
	}
}