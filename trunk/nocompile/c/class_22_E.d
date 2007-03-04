// $HeadURL$
// $Date$
// $Author$

// @author@	bobef <bobef@lessequal.com>
// @date@	2006-03-01
// @uri@	news:du4ojh$1b0n$1@digitaldaemon.com
// @desc@	dmd: toobj.c:191: virtual void ClassDeclaration::toObjFile(): Assertion `!scope' failed.
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=717

// __DSTRESS_ELINE__ 16

module dstress.run.c.class_22_E;

template T(){
	class B : A{
	}

	class A{
	}
}

void main(){
	mixin T!();
}
