// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <kb3ctd2@yahoo.com>
// @date@	2005-01-09
// @uri@	news:crshla$2io3$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2659

module dstress.run.cast_09;

class Parent{
}

class Child{
}

int main(){
	Child c = new Child();
	cast(Parent) p=null;
	return 0;
}
