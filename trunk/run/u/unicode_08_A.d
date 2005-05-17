// $HeadURL$
// $Date$
// $Author$

// @author@	Hiroshi Sakurai <Hiroshi_member@pathlink.com>
// @date@	2005-05-17
// @uri@	news:d6bm67$cfr$1@digitaldaemon.com	
// @url@	http://f17.aaa.livedoor.jp/~labamba/?BugTrack%2F13

module dstress.run.u.unicode_08_A;

int main(){
	static ubyte[] master = [
		0xE3u, 0x83u, 0xAFu, 0xE3u, 0x83u, 0xADu, 0xE3u, 0x82u,
		0xB9u, 0xEFu, 0xBDu, 0x97u
	];

	char[] string = "ワロスｗ";

	assert(string.length==master.length);

	for(int i=0; i<master.length; i++){
		assert(string[i]==master[i]);
	}

	return 0;
}
	
