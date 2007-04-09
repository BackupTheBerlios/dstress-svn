// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3554

// __DSTRESS_ELINE__ 18

module dstress.nocompile.deprecated_18;

deprecated union A{
	int i;
	short s;
}

void test(A a){
}
