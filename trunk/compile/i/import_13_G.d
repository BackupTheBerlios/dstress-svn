// $HeadURL$
// $Date$
// $Author$

// @author@	Tom S <h3r3tic@remove.mat.uni.torun.pl>
// @date@	2006-03-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6450

module /*dstress.*/compile.i.import_13_G;

import /*dstress.*/compile.i.import_13_H;

class Foo : Bar{
	char[] foo(){
		return "Foo.foo";
	}
}
