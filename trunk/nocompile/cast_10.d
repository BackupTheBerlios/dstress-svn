// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <kb3ctd2@yahoo.com>
// @date@	2005-01-09
// @uri@	news:crshla$2io3$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2659

// __DSTESS_ELINE__  25

module dstress.nocompile.cast_10;

class Parent{
}

class Child : Parent {
}

void test(inout Parent p){
}

int main(){
	Child c = new Child();
	test(c);
	return 0;
}
