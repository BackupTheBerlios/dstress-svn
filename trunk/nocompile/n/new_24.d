// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <kb3ctd2@yahoo.com>
// @date@	2005-06-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4248
// @desc@	Nested struct non-static initializer crash

// __DSTRESS_ELINE__ 19

module dstress.nocompile.n.new_24;

struct A{

	class B{
	}

	B b=new B;
}
