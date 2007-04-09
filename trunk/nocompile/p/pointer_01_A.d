// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-09-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4917

// __DSTRESS_ELINE__ 21

module dstress.nocompile.p.pointer_01_A;

void f(){
}

int f(int i){
	return 0;
}

void main(){
	void* v = &f;
}
