// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-03-06
// @uri@	news:d0fg6a$dfa$1@digitaldaemon.com

// __DSTRESS_ELINE__ 17

module dstress.nocompile.slice_10;

void test(){
	int[] array;
	array.length=4;
	float f=.2;
	array[1..2]= array[f..1.3];
}

