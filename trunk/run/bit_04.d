// $HeadURL$
// $Date$
// $Author$

// @author@	Carlos Santander B. <carlos8294@msn.com>
// @date@	2004-08-20
// @uri@	news:cg41gm$2u2d$1@digitaldaemon.com

module dstress.run.bit_04;

struct MyStruct{
	bit check;
}

int main(){
	MyStruct s;
	s.check = 0 != 0;
	return 0;
}
