// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-04-25
// @uri@	news:d4in6j$1nde$1@digitaldaemon.com

module dstress.run.creal_23;

int main(){
	creal c = 27L;
	assert(c.re==27L);
	assert(c.im==0.0L);
	return 0;
}
