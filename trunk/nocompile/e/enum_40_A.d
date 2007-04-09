// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-07-23
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4606

// __DSTRESS_ELINE__ 18

module dstress.nocompile.e.enum_40_A;

enum Enum{
	A
}

void main(){
	Enum=1;
}