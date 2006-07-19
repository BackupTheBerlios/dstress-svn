// $HeadURL$
// $Date$
// $Author$

// @author@	Victor Nakoryakov <nail-mail@mail.ru>
// @date@	2005-06-23
// @uri@	news:d9erom$2roj$1@digitaldaemon.com

module dstress.run.b.bug_cod3_736_A;

struct Struct{

	int id;

	real foo(){
		return 0;;
	}

	void bar(out Struct Q){
		if (foo < 0){
			Q = *this;
		}
	}
}

int main(){
	Struct s;
	s.id=1;

	Struct ss;
	ss.id=2;

	s.bar(ss);
	if(ss.id != 0){
		assert(0);
	}

	return 0;
}

