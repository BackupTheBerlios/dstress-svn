// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-06-08
// @uri@	news:d87vbn$2tnm$1@digitaldaemon.com

// __DSTRESS_ELINE__ 16

module dstress.nocompile.d.delete_09_C;

typedef char[] string;
 
void test(string[int] arr, int key ){
	delete arr[ key ];
} 
