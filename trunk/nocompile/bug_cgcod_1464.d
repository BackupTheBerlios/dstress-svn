// @author@	Ivan Senji <ivan.senji@public.srce.hr>
// @date@	2004-07-25
// @uri@	news://ce0vvh$2j71$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:1106

module dstress.nocompile.bug_cgcod_1464;

int main (){
	int x=3;
	int[] a = (&x)[];
	return 0;
}
