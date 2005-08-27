// $HeadURL$
// $Date$
// $Author$

// @author@	Hiroshi Sakurai <Hiroshi_member@pathlink.com>
// @date@	2005-08-24
// @uri@	news:dehc8m$1nk5$1@digitaldaemon.com
// @uri@	http://f17.aaa.livedoor.jp/~labamba/?BugTrack%2F19

module dstress.run.o.opDiv_10_B;

int main(){
	assert(1 == 3/3);
	assert(-1 == -3/3);
	assert(-1 == 3/-3);
	assert(1 == -3/-3);
	assert(-1 == (-3)/3);
	assert(1 == (-3)/(-3));
	assert(-1 == 3/(-3));
	return 0;	
} 