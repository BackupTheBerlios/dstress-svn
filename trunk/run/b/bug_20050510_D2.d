// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-10
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3943

// __DSTRESS_DFLAGS__ compile/b/bug_20050510_A1.d

module dstress.run.b.bug_20050510_D2;

import /+dstress.+/compile.b.bug_20050510_A1;

alias TA!(int) TA_int;

int main(){
	TA_int variable;
	return 0;
}

