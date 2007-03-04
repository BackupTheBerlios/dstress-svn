// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <kb3ctd2@yahoo.com>
// @date@	2005-01-09
// @uri@	news:crshla$2io3$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2659

module dstress.run.cast_08;

class Parent{
}

class Child{
}

int main(){
	Child c = new Child();
	Parent p = cast(Parent) c;
	p = null;
	return 0;
}
