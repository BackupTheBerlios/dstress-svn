// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2004-11-30
// @uri@	news:coi83g$1s76$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2385

module dstress.run.creal_20;

int main(){
	creal c = (2-2i)*(2-2i);
	assert(c.re == 0);
	assert(c.im == -8);
	return 0;
}
