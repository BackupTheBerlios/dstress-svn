// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d4026v$nc0$5@digitaldaemon.com
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=990

module dstress.run.f.foreach_28_B;

int main(char[][] args) {
	foreach(char[] p; args){
		static if(0){
			int i;
		}
	}
	return 0;
}
