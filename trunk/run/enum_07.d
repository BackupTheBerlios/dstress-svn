// @author@	shinichiro.h <s31552@mail.ecc.u-tokyo.ac.jp>
// @date@	2004-11-04
// @uri@	news://20041104013903.548413c0.s31552@mail.ecc.u-tokyo.ac.jp
// @url@	nttp://digitalmars.com/D.gnu:831

module destress.run.enum_07;

int main(){
	enum MyEnum{ A, B };
	MyEnum e = -MyEnum.B;
	assert(MyEnum.B>0);
	assert(e<0);
	return 0;
}
