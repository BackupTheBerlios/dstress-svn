// $HeadURL$
// $Date$
// $Author$

// @author@	Vathix <vathixSpamFix@dprogramming.com>
// @date@	2004-09-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1815
// @uri@	nntp://digitalmars.com/digtalmars.D.bugs/1815

module dstress.compile.mixin_01;

template mix(){
	int x;
}

mixin .mix;
