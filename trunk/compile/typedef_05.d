// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2004-09-06

module dstress.compile.typedef_05;

typedef char[] String;

char[] test(String s){
	return s[4..6];
}
