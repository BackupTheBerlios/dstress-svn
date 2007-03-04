// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2004-11-30
// @uri@	news:coi83g$1s76$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2385

module dstress.run.creal_20;

int main(){
	creal c = (2.0L - 2.0Li)*(2.0L - 2.0Li);
	assert(c.re == 0.0L);
	assert(c.im == -8.0L);
	return 0;
}
