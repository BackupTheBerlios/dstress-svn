// $HeadURL$
// $Date$
// $Author$

// @author@	Hiroshi Sakurai <Hiroshi_member@pathlink.com>
// @date@	2005-08-27
// @uri@	news:dep4oc$8sq$1@digitaldaemon.com
// @uri@	http://f17.aaa.livedoor.jp/~labamba/?BugTrack%2F20
// @desc@	Internal error: s2ir.c 481

// __DSTRESS_ELINE__ 24

module dstress.nocompile.c.continue_03_A;

class Stream{
	int opApply(int delegate(inout char[] line) dg){
	}
}

void parse(Stream stream){
READ_LINE:
	foreach (char [] line; stream) {
		if (line.length == 0) {
			continue READ_LINE;
		}
	}
}