// $HeadURL$
// $Date$
// $Author$

// @author@	Aleksey Bobnev <uw@front.ru>
// @date@	2004-12-27
// @uri@	news:cqp4fk$1dcj$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2613

module dstress.run.template_10;

import addon.template_10_typelist;

template IsArray(T)        { static const bool IsArray = false; }
template IsArray(T : T[])  { static const bool IsArray = true; }

int main(){
    assert(IsArray!(int[])==1);
	assert(IsArray!(int)==0);
	return 0;
}