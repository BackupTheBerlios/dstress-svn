// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-02-03
// @uri@	news:cttuih$hpb$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2852

module dstress.run.with_12;

struct Entry{
	int a;
}

int main(){
	Entry[10] table;

	assert(table[1].a==0);
	with( table[1]){
		a=1;
	}
	assert(table[1].a==1);

	return 0;
}