// $HeadURL$
// $Date$
// $Author$

// @author@	Hiroshi Sakurai <Hiroshi_member@pathlink.com>
// @date@	2005-05-17
// @uri@	news:d6bm67$cfr$1@digitaldaemon.com	
// @uri@	http://f17.aaa.livedoor.jp/~labamba/?BugTrack%2F13

module dstress.run.u.unicode_08_C;

int main(){
	static ubyte[] master = [
		0xE3u, 0x83u, 0xAFu, 0xE3u, 0x83u, 0xADu, 0xE3u, 0x82u,
		0xB9u, 0xEFu, 0xBDu, 0x97u
	];

	string x = `ワロスｗ`;

	assert(x.length==master.length);

	for(int i=0; i<master.length; i++){
		assert(x[i]==master[i]);
	}

	return 0;
}
	
