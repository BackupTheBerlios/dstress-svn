// $HeadURL$
// $Date$
// $Author$

// @author@	Hiroshi Sakurai <Hiroshi_member@pathlink.com>
// @date@	2005-08-27
// @uri@	news:dep4oc$8sq$1@digitaldaemon.com
// @uri@	http://f17.aaa.livedoor.jp/~labamba/?BugTrack%2F20
// @desc@	Internal error: s2ir.c 481

// __DSTRESS_ELINE__ 23

module dstress.nocompile.c.continue_03_B;

class Stream{
	int opApply(int delegate(ref char[] line) dg){
	}
}

void parse(Stream stream){
	foreach (char [] line; stream) {
		if (line.length == 0) {
			continue;
		}
	}
}