// $HeadURL$
// $Date$
// $Author$

// @author@	Victor Nakoryakov <nail-mail@mail.ru>
// @date@	2005-06-23
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4398

module dstress.run.b.bug_cod3_736_B;

struct Struct{

	int id;

	real foo(){
		return 0;
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

