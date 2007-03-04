// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-02-03
// @uri@	news:cttuih$hpb$1@digitaldaemon.com
// @uri@	nntp://news.digitalmars.com/digitalmars.D.bugs/2852

module dstress.run.w.with_13_B;

class Entry{
	int a;
}

class Class{
	Entry[] table;

	this(){
		table = new Entry[10];
		table[0] = new Entry();
		table[1] = new Entry();
		table[2] = new Entry();

		table[1].a = 5;
	}
	
	Entry opIndex(int i){
		return table[i];
	}
}

int main(){
	Class c= new Class();

	with(c[1]){
		if(a != 5){
			assert(0);
		}
		a++;
	}
	
	if(c[1].a != 6){
		assert(0);
	}

	return 0;
}
