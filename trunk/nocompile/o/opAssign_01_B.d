// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Sauls <ibisbasenji@gmail.com>
// @date@	Jul 2005-07-18
// @uri@	news:dbfiit$29h3$1@digitaldaemon.com

module dstress.nocompile.o.opAssign_01_B;

void func(inout int x){
}

void main(){
	int foo, bar;
	func(bar = foo);
}