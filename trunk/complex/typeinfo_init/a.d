// $HeadURL$
// $Date$
// $Author$

// @author@	Victor Nakoryakov <nail-mail@mail.ru>
// @date@	2005-07-06
// @uri@	news:dah2lp$2igf$1@digitaldaemon.com

module /*dstress.*/complex.typeinfo_init.a;

class TemplateClass(T){
	void* p = cast(void*)typeid(T);
}

