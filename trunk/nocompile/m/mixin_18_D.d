// $HeadURL$
// $Date$
// $Author$

// @author@	<nail-mail@mail.ru>
// @date@	2006-03-28
// @uri@	news:bug-76-3@http.d.puremagic.com/bugzilla/

// __DSTRESS_ELINE__ 17

module dstress.nocompile.m.mixin_18_D;

struct A{
}

void main(){
        mixin A!().T!();
}


