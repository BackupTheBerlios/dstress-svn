// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-07-14
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4531

// __DSTRESS_ELINE__ 15

module dstress.nocompile.o.opAssign_02_C;

void main(){
	int a;
	int = a;
}