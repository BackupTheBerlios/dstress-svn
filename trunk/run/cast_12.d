// $HeadURL$
// $Date$
// $Author$

// @author@	Russ Lewis <spamhole-2001-07-16@deming-os.org>
// @date@	2005-01-18
// @uri@	news:csk4ef$2njc$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2719

module dstress.run.cast_12;

int main(){
	double d = 1.0;
	ulong l = cast(ulong) d;
	assert( l == 1);
	return 0;
}