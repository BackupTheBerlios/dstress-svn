// $HeadURL$
// $Date$
// $Author$

// @author@	imr1984 <imr1984_member@pathlink.com>
// @date@	2005-04-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3758

// __DSTRESS_DFLAGS__ addon/package_01_A.d
// __DSTRESS_ELINE__ 18

module dstress.nocompile.package_02;

import addon.package_01_A;

void test(){
	MyClass c=new MyClass;
	int i=c.dummy;
}

