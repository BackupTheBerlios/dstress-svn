// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2004-10-22
// @uri@	news:clbr09$uc6$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2140

// invariant is only allowed in classes (dmd-0.104 documentation)

module dstress.nocompile.invariant_04;

struct MyStruct{
	int i;

	void test(){
	}

	invariant{
		assert(0);
	}
}

int main(){
	MyStruct s;
	s.test();
	return 0;
}
