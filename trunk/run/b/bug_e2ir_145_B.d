// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>	
// @date@	2006-08-22
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=8194
// @desc@	[Issue 304] Internal error: e2ir.c 145

// __DSTRESS_DFLAGS__ compile/b/bug_e2ir_145_A.d

module /*dstress.*/run.b.bug_e2ir_145_B;

import /*dsrtess.*/compile.b.bug_e2ir_145_A;

int main(){
	func1( { func2(); });
	return 0;
}
