// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <brunodomedeirosATgmail@SPAM.com>
// @date@	2006-06-24
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=7648

module dstress.run.b.bug_mtype_2226_A;

int status;

class C{
	void bar(){
		status++;
	}
}

int main(){
	typeof( {} ) foo;

	C c = new C();

	foo = &c.bar;

	if(status != 0){
		assert(0);
	}
	foo();
	if(status != 1){
		assert(0);
	}

	return 0;
}
