// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5835

module /*dstress.*/compile.o.overload_17_C;
import /*dstress.*/compile.o.overload_17_B;

class Daughter : Parent {
	override Son test() {
		return new Son();
	}
}
