// $HeadURL$
// $Date$
// $Author$

// @author@	Stephan Wienczny <Stephan@Wienczny.de>
// @data@	2004-09-20

module dstress.run.goto_01;

int main(){
	goto start;
	assert(0);
start:
	return 0;
}
