// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-02-03
// @uri@	news:cttuih$hpb$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2852

module dstress.run.with_13;

class Class{
	struct Entry{
		int a;
	}
	
	Entry[10] table;
	
	Entry opIndex(int i){
		return table[i];
	}
}

int main(){
	Class c= new Class;

	with( c[ 1]){
		a=0;
	}

	return 0;
}