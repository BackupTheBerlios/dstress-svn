// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-08-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4819

// __DSTRESS_ELINE__ 15

module dstress.nocompile.a.array_initialization_19;

void main(){
	void[] data;
	data.length=1;
} 