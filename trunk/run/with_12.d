// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-02-03
// @uri@	news:cttuih$hpb$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2852

module dstress.run.with_12;

struct Entry{
	int a;
}

int main(){
	Entry[10] table;

	if(table[1].a != 0){
		assert(0);
	}
	
	with(table[1]){
		a=1;
	}
	if(table[1].a != 1){
		assert(0);
	}

	return 0;
}
