// $HeadURL$
// $Date$
// $Author$

// @author@	pragma <pragma_member@pathlink.com>
// @date@	2005-05-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3961

module dstress.compile.f.foreach_30_A;

class Collection{
	int opApply(int delegate(ref int) dg){
		return 0;
	}
}

bool test(){
	Collection a,b;
	
	foreach(int x; a){
		foreach(int y; b){
			return false;
		}
	}
	
	return true;
}
