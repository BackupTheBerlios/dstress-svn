// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-04-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3603

// __DSTRESS_ELINE__ 14

module dstress.nocompile.version_32;

void test(){
	version (1)(2)(3);
}

