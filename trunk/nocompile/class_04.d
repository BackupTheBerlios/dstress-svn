// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2004-06-23
// @uri@	news://opr90q0zkf5a2sq9@digitalmars.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:574

module dstress.nocompile.class_04;

interface A {
}

struct B {
}

class C : B,A {
}
