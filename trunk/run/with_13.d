// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-02-03
// @uri@	news:cttuih$hpb$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2852

module dstress.run.with_13;

struct Entry{
	int a;
}

class Class{
	Entry[] table;
	
	this(){
		table = new Entry[10];
		table[1].a = 4;
	}
	
	Entry opIndex(int i){
		return table[i];
	}
}

int main(){
	Class c= new Class();

	with(c[1]){
		if(a != 4){
			assert(0);
		}
		a++;
	}
	if(c[1].a != 4){
		assert(0);
	}

	return 0;
}
