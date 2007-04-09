// $HeadURL$
// $Date$
// $Author$

// @author@	Tyro <ridimz@yahoo.com>
// @date@	2006-09-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=8247
// @desc@	Internal error: ..\ztc\cod1.c 2521

// __DSTRESS_ELINE__ 21

module dstress.nocompile.b.bug_cod1_2521_A;

void foo(...){
}

void bar(){
}

int main(){
	foo(bar());

	return 0;
}

