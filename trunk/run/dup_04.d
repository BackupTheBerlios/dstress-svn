// $HeadURL$
// $Date$
// $Author$

// @author@	Russ Lewis <spamhole-2001-07-16@deming-os.org>
// @date@	2004-10-11
// @uri@	news:ckdc4r$re2$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2068

module dstress.run.dup_04;

int main() {
	real[10] array;
	real[] copy = array.dup;
	copy.sort;
	return 0;
}
