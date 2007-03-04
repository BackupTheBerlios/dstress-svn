// $HeadURL$
// $Date$
// $Author$

// @author@	Russ Lewis <spamhole-2001-07-16@deming-os.org>
// @date@	2005-01-18
// @uri@	news:csk4ef$2njc$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2719

module dstress.run.cast_14;

int main(){
	float f = 1.0;
	ulong l = cast(ulong) f;
	assert( l == 1);
	return 0;
}
