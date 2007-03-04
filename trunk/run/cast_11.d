// $HeadURL$
// $Date$
// $Author$

// @author@	Russ Lewis <spamhole-2001-07-16@deming-os.org>
// @date@	2005-01-18
// @uri@	news:csk4ef$2njc$1@digitaldaemon.com
// @uri@	nntp://news.digitalmars.com/digitalmars.D.bugs/2719

module dstress.run.cast_11;

int main(){
	double d = 1.0;
	long l = cast(long) d;
	assert( l == 1);
	return 0;
}
