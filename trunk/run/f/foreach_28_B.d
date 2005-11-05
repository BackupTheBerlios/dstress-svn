// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d4026v$nc0$5@digitaldaemon.com

// __DSTRESS_DFLAGS__ -inline

module dstress.run.f.foreach_28_B;

int main(char[][] args) {
	foreach(char[] p; args){
		version(dummy) int i;
	}
	return 0;
}
