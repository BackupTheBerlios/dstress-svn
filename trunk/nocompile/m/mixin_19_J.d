// $HeadURL$
// $Date$
// $Author$

// @author@	<nail-mail@mail.ru>
// @date@	2006-04-04
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=83

// __DSTRESS_ELINE__ 24

module dstress.nocompile.m.mixin_19_J;

int state;

template T1(){
	alias T2!().myproperty myproperty;

	int myproperty(){
		return state;
	}
}

template T2(){
	alias T1!().myproperty myproperty;

	void myproperty(int x){
		state = x;
	}
}

mixin T1!();
mixin T2!();

