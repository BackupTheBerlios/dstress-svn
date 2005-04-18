// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d4026v$nc0$5@digitaldaemon.com

module dstress.run.while_05;

int main(char[][] args) {
	while(args.length>20){
		version(dummy) int i;
	}
	return 0;
}
