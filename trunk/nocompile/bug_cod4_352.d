// $HeadURL$
// $Date$
// $Author$

// @author@	Hauke Duden <H.NS.Duden@gmx.net>
// @date@	2004-07-04
// @uri@	news:cc8qdr$oe8$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/700

module dstress.nocompile.bug_cod4_352;

int main(){
	void[] x;
	
	x[0]=1;
	
	return 0;
}
