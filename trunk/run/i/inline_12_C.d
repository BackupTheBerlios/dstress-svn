// $HeadURI$
// $Date$
// $Author$

// @author@	Victor Nakoryakov <nail-mail@mail.ru>
// @date@	2005-06-23
// @uri@	news:d9eouv$2okr$1@digitaldaemon.com

module dstress.run.i.inline_12_C;

struct Struct{
	int opMul(int x){
		return x+1;
	}
}

class Class{
	int opMul(int f){
		Struct foo;
		return (foo * f) + 3;
	}
}

int main(){
	Struct s;
	assert(s * 1 == 2);

	Class c = new Class;
	assert(c * 1 == 5);

	return 0;
}


