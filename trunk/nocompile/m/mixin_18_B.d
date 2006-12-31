// $HeadURL$
// $Date$
// $Author$

// @author@	<nail-mail@mail.ru>
// @date@	2006-03-28
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=76

// __DSTRESS_ELINE__ 17

module dstress.nocompile.m.mixin_18_B;

class A{
}

class C(P){
        mixin P!().T!();
}

void main(){
	C!(A) c = new C!(A);
}


