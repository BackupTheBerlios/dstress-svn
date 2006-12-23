// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-09-02
// @uri@	news:df9of8$pj5$1@digitaldaemon.com

// __DSTRESS_ELINE__ 21

module dstress.nocompile.p.pointer_01_B;

int f(int i){
	return 0;
}

void f(){
}

void main(){
	void* v = &f;
}
