// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-02-08
// @uri@	news:cua2nm$11pg$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2888

// __DSTRESS_ELINE__ 15

module dstress.nocompile.this_04;

struct MyStruct{
	MyStruct* s = this;
}
 