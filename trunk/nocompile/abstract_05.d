// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <kb3ctd2@yahoo.com>
// @date@	2004-12-29
// @uri@	news:cqvnro$26ul$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2624

// __DSTRESS_ELINE__ 15

module dstress.nocompile.abstract_05;

class Base{
    abstract this();
}

int main(){
	Base b=new Base();
	return 0;
}
