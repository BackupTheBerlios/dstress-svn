// $HeadURL$
// $Date$
// $Author$

// @author@	Vathix <vathixSpamFix@dprogramming.com>
// @date@	2004-09-08
// @uri@	news:chns86$192c$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digtalmars.D.bugs/1815

module dstress.compile.mixin_01;

template mix(){
	int x;
}

mixin .mix;
