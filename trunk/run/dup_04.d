// based on a report by:
// @author@	Russ Lewis <spamhole-2001-07-16@deming-os.org>
// @date@	2004-10-11
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:2068
// @uri@	<ckdc4r$re2$1@digitaldaemon.com>

int main() {
	real[10] array;
	real[] copy = array.dup;
	copy.sort;
	return 0;
}
