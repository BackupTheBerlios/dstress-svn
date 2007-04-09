// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-03-06
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3094

// __DSTRESS_ELINE__ 17

module dstress.nocompile.slice_10;

void test(){
	int[] array;
	array.length=4;
	float f=.2;
	array[1..2]= array[f..1.3];
}

