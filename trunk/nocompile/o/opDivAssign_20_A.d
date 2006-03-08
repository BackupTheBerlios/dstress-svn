// $HeadURL$
// $Date$
// $Author$

// @author@	<ddparnell@bigpond.com>
// @date@	2006-03-08
// @uri@	news:bug-24-3@http.d.puremagic.com/bugzilla/

// __DSTRESS_ELINE__ 15

module dstress.nocompile.o.opDivAssign_20_A;

void main(){
	bool b;
	b /= b;
}
