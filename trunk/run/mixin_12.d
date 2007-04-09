// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <kb3ctd2@yahoo.com>
// @date@	2005-03-23
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3319

module dstress.run.mixin_12;

class A{
	template M(){
		int C(){
			return 10;
		}

		int opCall(){
			return 15;
		}
	}

	mixin M m;

	template N(){
		int C(){
			return 20;
		}

		int opCall(){
			return 25;
		}
	}

	mixin N n;
}

int main(){
	A a=new A;
	assert(a.m.C()==10);
	assert(a.n.C()==20);

	assert(a.m()==15);
	assert(a.n()==25);
	return 0;
}
