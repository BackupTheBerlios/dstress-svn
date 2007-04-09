// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5835

module /*dstress.*/compile.o.overload_17_B;
import /*dstress.*/compile.o.overload_17_C;

class Parent {
	Parent test() {
		return new Parent();
	}
}

class Son : Parent {
	override Daughter test() {
		return new Daughter();
	}
}
