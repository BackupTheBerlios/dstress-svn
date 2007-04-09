// $HeadURL$
// $Date$
// $Author$

// @author@	BCS <fubar@pathlink.com>
// @date@	2006-10-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=8639
// @desc@	name shadowing in if statement

// __DSTRESS_ELINE__ 17

module dstress.nocompile.i.if_15_A;

void foo(){
	int i;

	if(int i = 1){
	}
}
