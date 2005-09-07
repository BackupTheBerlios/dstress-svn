// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-09-02
// @uri@	news:df9of8$pj5$1@digitaldaemon.com

// __DSTRESS_ELINE__ 20

module dstress.nocompile.t.typeof_07_C;

void f(){
}

int f(int i){
}

void main(){
	typeof(&f) g;
}