// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2004-11-15
// @uri@	news:cn9vah$1shn$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2270

module dstress.compile.private_03;

class Outer{
	class Inner{
		private this(){
		}
		
		private int i=3;
	}
}

int main(){
	Outer outer = new Outer;
	Outer.Inner inner = new outer.Inner();
	assert(inner.i==3);
	return 0;
}
