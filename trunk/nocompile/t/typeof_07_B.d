// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-09-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4917

// __DSTRESS_ELINE__ 20

module dstress.nocompile.t.typeof_07_B;

void f(){
}

void f(int i){
}

void main(){
	typeof(&f) g;
}