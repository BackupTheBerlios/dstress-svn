// $HeadURL$
// $Date$
// $Author$

// @author@	Ant <duitoolkit@yahoo.ca>
// @date@	2006-02-14
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6260

// __DSTRESS_ELINE__ 17

module dstess.nocompile.e.enum_44_F;

enum{
	hello = 3
}

alias .hello hello;
