// $HeadURL$
// $Date$
// $Author$

// @author@	Hiroshi Sakurai <Hiroshi_member@pathlink.com>
// @date@	2004-12-29
// @uri@	news:cqtmid$3no$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/2618
// @uri@	http://f17.aaa.livedoor.jp/~labamba/?BugTrack%2F10

module dstress.run.cast_07;

int main(){
	uint u;
	u = 1 << 31;
	assert( u == 0b1000_0000__0000_0000__0000_0000__0000_0000u);
	return 0;
}
