// $HeadURL$
// $Date$
// $Author$

// @author@	Hiroshi Sakurai <Hiroshi_member@pathlink.com>
// @date@	2004-12-29
// @uri@	news:cqtmid$3no$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2618
// @url@	http://f17.aaa.livedoor.jp/~labamba/?BugTrack%2F10

module dstress.run.cast_06;

int main(){
	uint u;
	int a = 1;
	int b = 31;
	u = a << b;
	assert( u == 0b1000_0000__0000_0000__0000_0000__0000_0000u);
	return 0;
}
