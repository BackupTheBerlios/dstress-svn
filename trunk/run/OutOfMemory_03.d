// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-04-23
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3771

module dstress.run.OutOfMemory_03;

debug import std.c.stdio;

Object[] a;

int main(){
	int delta= 100000;
	while(1){
		try{
			a.length = a.length + delta;
debug			fprintf(stderr,"%d ", a.length);
		}catch{
debug			fprintf(stderr, "Allocated array of length %d.\n", a.length);
			return 0;
		}
	}
	assert(0);
}

