// $HeadURL$
// $Date$
// $Author$

// @author@	imr1984 <imr1984_member@pathlink.com>
// @date@	2005-04-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3758

// __DSTRESS_DFLAGS__ addon/private_05_A.d
// __DSTRESS_ELINE__ 18

module dstress.nocompile.private_06;

import dstress.addon.private_05_A;

void test(){
	MyClass c=new MyClass;
	int i=c.dummy;
}

