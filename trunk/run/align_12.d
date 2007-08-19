// $HeadURL$
// $Date$
// $Author$

// @author@	Robert Atkinson <Robert.Atkinson@gmail.com>
// @date@	2005-05-04
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3882

module dstress.run.align_12;

version(X86) version = type1;
version(X86_64) version = type1;

version(type1){
	version(linux) version=testA; // c compiler: gcc
	version(Windows) version=testA; // c compiler: dmc
}

align(2) struct S{
	byte a;
	int b;
}

int main(){
	S s;
	version(testA){
		assert((cast(void*)&s.a)-(cast(void*)&s.b)==-2);
	}else{
		static assert(0, "DSTRESS{XFAIL}: no C alignment data present");
	}
	return 0;
}
