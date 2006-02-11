// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-02-09
// @uri@	news:dsgstn$2u4h$2@digitaldaemon.com

module dstress.run.a.alias_29_B;

class C{
	int i;
}

int main(){
     C c = new C();
     alias c.i a;

     c.i = 3;
     assert(a == 3);

     return 0;
}
