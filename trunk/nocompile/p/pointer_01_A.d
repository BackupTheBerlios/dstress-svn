// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-09-02
// @uri@	news:df9of8$pj5$1@digitaldaemon.com

// __DSTRESS_ELINE__ 20

module dstress.nocompile.p.pointer_01_A;

void f(){
}

int f(int i){
}

void main(){
	void* v = &f;
}