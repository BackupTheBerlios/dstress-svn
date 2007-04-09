// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Sauls <ibisbasenji@gmail.com>
// @date@	2005-07-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4549

module dstress.nocompile.o.opAssign_01_B;

void func(inout int x){
}

void main(){
	int foo, bar;
	func(bar = foo);
}
