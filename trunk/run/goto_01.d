// $HeadURL$
// $Date$
// $Author$

// @author@	Stephan Wienczny <Stephan@Wienczny.de>
// @date@	2004-09-20
// @uri@	irc:irc.freenode.net#D

module dstress.run.goto_01;

int main(){
	goto start;
	assert(0);
start:
	return 0;
}
