// $HeadURL$
// $Date$
// $Author$

module dstress.run.alias_02;

alias Object MyObject;

int main(char[][] args){
	MyObject o = new Object();
	o.toString();
	return 0;
}
