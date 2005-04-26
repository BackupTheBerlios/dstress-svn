// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-04-25
// @uri@	news:d4in6j$1nde$1@digitaldaemon.com

module dstress.run.creal_24;

int main(){
	creal c = 27i;
	assert(c.re==0.0L);
	assert(c.im==27.0Li);
	return 0;
}
