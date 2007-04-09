// $HeadURL$
// $Date$
// $Author$

// @author@	Aleksey Bobnev <uw@front.ru>
// @date@	2004-12-27
// @uri@	news:cqp4fk$1dcj$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2613

module dstress.run.template_12;

import addon.template_10_traits;

int main(){
    assert(IsArray!(int[])==1);
	assert(IsArray!(int)==0);
    assert(Traits!(int[]).isArray==1);
	assert(Traits!(int).isArray==0);
	return 0;
}
