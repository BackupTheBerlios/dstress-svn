// $HeadURL$
// $Date$
// Author$

// @author@	Roel <roel.mathys@gmail.com>
// @date@	2006-10-28
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=8873
// @desc@	[Issue 467] double inheritance from the same interface

module dstress.nocompile.i.interface_26_A;

interface I {
        void foo();
}

class C : I, I {
        void foo() {
	}
}
