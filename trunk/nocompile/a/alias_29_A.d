// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-02-09
// @uri@	news:dsgstn$2u4h$2@digitaldaemon.com

// __DSTRESS_ELINE__ 19

module dstress.nocompile.a.alias_29_A;

struct S{
	int i;
}

void main(){
     S   s;
     alias s.i a;
}
