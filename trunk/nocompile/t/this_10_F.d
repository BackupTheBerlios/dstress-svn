// $HeadURL$
// $Date$
// $Author$

// @author@	bobef <bobef@lessequal.com>
// @date@	2006-03-02
// @uri@	news:du4ong$1b0n$2@digitaldaemon.com
// @desc@	func.c:373: virtual void FuncDeclaration::semantic3(Scope*): Assertion `0' failed.

// __DSTRESS_ELINE__ 16

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
