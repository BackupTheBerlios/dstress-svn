// $HeadURL$
// $Date$
// $Author$

// @author@	Russ Lewis <spamhole-2001-07-16@deming-os.org>
// @date@	2005-01-18
// @uri@	news:csk4ef$2njc$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2719

module dstress.run.cast_17;

int main(){
	real r = 1.0;
	int i = cast(int) r;
	assert(i == 1);
	return 0;
}
