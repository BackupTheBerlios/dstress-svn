// $HeadURL$
// $Date$
// $Author$

// @author@	Robert Atkinson <Robert.Atkinson@gmail.com>
// @date@	2005-05-04
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3882

module dstress.run.align_15;

version(X86){
	version(linux) version=testA; // c compiler: gcc
	version(Windows) version(DigitalMars) version=testA; // c compiler: dmc
}

align(32) struct S{
	byte a;
	byte b;
}

int main(){
	S s;
	version(testA){
		if(&s.a-&s.b != -32){
			assert(0);
		}
	}else{
		pragma(msg, "no C alignment data present");
		static assert(0);
	}
	return 0;
}

