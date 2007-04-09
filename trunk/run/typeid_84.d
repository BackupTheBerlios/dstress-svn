// $HeadURL$
// $Date$
// $Author$

// @author@	ahiru <ahiru@1dk.jp>
// @date@	2005-03-01
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3072

module dstress.run.typeid_84;

int main(){
	alias byte function(int) func;
	TypeInfo ti = typeid(func);
	assert(!(ti is null));
	assert(ti.tsize == func.sizeof);
	assert(ti.toString() == "byte(int)*");
	return 0;
}
