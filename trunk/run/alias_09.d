// @author@	Nick <Nick_member@pathlink.com>
// @date@	2004-09-11
// @uri@	news://chtj6t$24bm$1@digitalmars.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:1821

module dstress.run.alias_09;

class foo(T: T[]){
}

class bar(Tp: Tp[]){
}

alias bar!(char[]) Alias;

int main(){
	return 0;
}
