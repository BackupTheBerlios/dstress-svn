// $HeadURL$
// $Date$
// $Author$

// @author@	imr1984 <imr1984_member@pathlink.com>
// @date@	2005-04-20
// @uri@	news:d45a07$2qit$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ addon/package_01_A.d
// __DSTRESS_ELINE__ 18

module dstress.nocompile.package_02;

import dstress.addon.package_01_A;

void test(){
	MyClass c=new MyClass;
	int i=c.dummy;
}

