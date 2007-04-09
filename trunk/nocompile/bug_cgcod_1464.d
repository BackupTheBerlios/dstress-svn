// $HeadURL$
// $Date$
// $Author$

// @author@	Ivan Senji <ivan.senji@public.srce.hr>
// @date@	2004-07-25
// @uri@	news:ce0vvh$2j71$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1106

// __DSTRESS_ELINE__ 16

module dstress.nocompile.bug_cgcod_1464;

int main (){
	int x=3;
	int[] a = (&x)[];
	return 0;
}
