// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <jarrett.billingsley@gmail.com>
// @date@	2006-08-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=285

// __DSTRESS_TORTURE_BLOCK__ -release
// __DSTRESS_ELINE__ 21

module dstress.norun.s.struct_26_A;

struct S{
	void dummy(){
	}
}

int main(){
	S* s = null;
	s.dummy();
	return 0;
}
