// $HeadURL$
// $Date$
// $Author$

// @author@	shinichiro.h <s31552@mail.ecc.u-tokyo.ac.jp>
// @date@	2004-11-04
// @uri@	news:20041104013903.548413c0.s31552@mail.ecc.u-tokyo.ac.jp
// @uri@	nntp://digitalmars.com/D.gnu/831

module destress.run.enum_08;

int main(){
	enum MyEnum{
		A=-1,
		AA,
		B
	}
	MyEnum e = -MyEnum.B;
	assert(MyEnum.B>0);
	assert(e<0);
	return 0;
}
