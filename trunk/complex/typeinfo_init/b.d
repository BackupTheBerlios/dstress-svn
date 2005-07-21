// $HeadURL$
// $Date$
// $Author$

// @author@	Victor Nakoryakov <nail-mail@mail.ru>
// @date@	2005-07-06
// @uri@	news:dah2lp$2igf$1@digitaldaemon.com

module /*dstress.*/complex.typeinfo_init.b;
import  /*dstress.*/complex.typeinfo_init.a;

class A{
	int a;
}

int main(){
        TemplateClass!(A) tc = new TemplateClass!(A)();
        return 0;
}

