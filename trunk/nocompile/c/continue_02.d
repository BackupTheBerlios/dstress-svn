// $HeadURL$
// $Date$
// $Author$

// @author@	Hiroshi Sakurai <Hiroshi_member@pathlink.com>
// @date@	2005-08-27
// @uri@	news:dep4oc$8sq$1@digitaldaemon.com
// @uri@	http://f17.aaa.livedoor.jp/~labamba/?BugTrack%2F20

// __DSTRESS_ELINE__ 16

module dstress.nocompile.c.continue_02;

void main(){	
	label: foreach(char a; "123"){
		continue label;
	}
}