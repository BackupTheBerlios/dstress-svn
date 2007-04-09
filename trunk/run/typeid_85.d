// $HeadURL$
// $Date$
// $Author$

// @author@	ahiru <ahiru@1dk.jp>
// @date@	2005-03-01
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3072

module dstress.run.typeid_85;

int main(){
	alias byte delegate(int) del;
	TypeInfo ti = typeid(del);
	assert(!(ti is null));
	assert(ti.tsize == del.sizeof);
	assert(ti.toString()=="byte delegate(int)");
	return 0;
}
