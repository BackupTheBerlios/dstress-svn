// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2004-09-11
// @uri@	news:chtj6t$24bm$1@digitalmars.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1821

module dstress.run.alias_09;

class foo(T: T[]){
}

class bar(Tp: Tp[]){
}

alias bar!(char[]) Alias;

int main(){
	Alias a = new Alias();
	return 0;
}
