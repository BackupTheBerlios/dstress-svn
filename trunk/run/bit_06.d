// $HeadURL$
// $Date$
// $Author$

// @author@	Carlos Santander B. <carlos8294@msn.com>
// @date@	2004-08-20
// @uri@	news:cg41gm$2u2d$1@digitaldaemon.com

module dstress.run.bit_06;

union MyUnion{
	bit check;
}

int main(){
	MyUnion u;
	u.check = 0 != 0;
	return 0;
}
