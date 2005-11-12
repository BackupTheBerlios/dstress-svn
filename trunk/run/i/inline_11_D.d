// $HeadURL$
// $Date$
// $Author$

// @author@	Victor Nakoryakov <nail-mail@mail.ru>
// @date@	2005-06-25
// @uri@	news:d9e3af$1olf$1@digitaldaemon.com

module dstress.run.i.inline_11_D;
 
struct Struct{
	int i;

	Struct foo(){
		Struct s;
		s.i=2;
		return s;
	}

	Struct bar(){
		return Struct.foo() * Struct.foo();
	}

	Struct opMul(Struct s){
		Struct ss;
		ss.i = s.i * i;
		return ss;
	}
}

int main(){
	Struct s;
	assert(s.bar().i==4);
	return 0;	
}
