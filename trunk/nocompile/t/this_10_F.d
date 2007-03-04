// $HeadURL$
// $Date$
// $Author$

// @author@	bobef <bobef@lessequal.com>
// @date@	2006-03-02
// @uri@	news:du4ong$1b0n$2@digitaldaemon.com
// @desc@	func.c:373: virtual void FuncDeclaration::semantic3(Scope*): Assertion `0' failed.
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=723

// __DSTRESS_ELINE__ 17

module dstress.nocompile.t.this_10_F;


template T(){
	class B : A{
		this(){
		}
	}

	class A : B{
	}
}

mixin T!();
