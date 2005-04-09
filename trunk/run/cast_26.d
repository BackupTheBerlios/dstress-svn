// $HeadURL$
// $Date$
// $Author$

// @author@	Kris <fu@bar.com>
// @date@	2005-04-09
// @uri@	news:d37pfe$17b8$1@digitaldaemon.com

module dstress.run.cast_26;

int main(char[][] args){
	char[] s;
	char[] t="a";

	s = (args.length>0) ? t : null;
	assert(s===t);
	return 0;
}
