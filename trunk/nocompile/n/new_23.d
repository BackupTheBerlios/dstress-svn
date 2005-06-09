// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <kb3ctd2@yahoo.com>
// @date@	2005-06-08
// @uri@	news:d88a8a$4b3$1@digitaldaemon.com
// @desc@	nested struct non-static initializer crash

// __DSTRESS_ELINE__ 19

module dstress.nocompile.n.new_23;

class A{

	class B{
	}

	B b=new B;
}
