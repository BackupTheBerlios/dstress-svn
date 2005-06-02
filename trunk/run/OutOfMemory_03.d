// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-04-23
// @uri@	news:d4a8b9$1rr3$1@digitaldaemon.com

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
	assert(0)
}

