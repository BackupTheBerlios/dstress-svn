// $HeadURL$
// $Date$
// $Author$

// @author@	Russ Lewis <spamhole-2001-07-16@deming-os.org>
// @date@	2005-01-18
// @uri@	news:csk4ef$2njc$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2719

module dstress.run.cast_18;

int main(){
	real r = 1.0;
	uint i = cast(uint) r;
	assert(i == 1);
	return 0;
}
