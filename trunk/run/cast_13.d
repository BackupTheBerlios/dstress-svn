// $HeadURL$
// $Date$
// $Author$

// @author@	Russ Lewis <spamhole-2001-07-16@deming-os.org>
// @date@	2005-01-18
// @uri@	news:csk4ef$2njc$1@digitaldaemon.com
// @uri@	nntp://news.digitalmars.com/digitalmars.D.bugs/2719

module dstress.run.cast_13;

int main(){
	float f = 1.0;
	long l = cast(long) f;
	assert( l == 1);
	return 0;
}
