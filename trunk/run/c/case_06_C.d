// $HeadURL$
// $Date$
// $Author$

// @author@	davidl <davidl@126.com>
// @date@	2007-04-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1102
// @desc@	[Issue 1102] switch case couldn't contain template member

module dstress.run.c.case_06_C;

const int i = 2;

int main(char[][] args){
	switch(args.length + 1){
		case 3:
			assert(0);
		case i:
			return 0;
		default:
			assert(0);
	}
}
