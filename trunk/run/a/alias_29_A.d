// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-02-09
// @uri@	news:dsgstn$2u4h$2@digitaldaemon.com

module dstress.run.a.alias_29_A;

struct S{
	int i;
}

int main(){
     S   s;
     alias s.i a;

     s.i = 3;
     assert(a == 3);

     return 0;
}
