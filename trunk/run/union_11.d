// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2004-11-15
// @uri@	news:cn9vah$1shn$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2270

module dstress.run.union_11;

union {
	short s=1234;
	byte b;
}

int main(){
	assert(s==1234);
	return 0;
}
