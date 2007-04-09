// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-09-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5015

module dstress.run.b.bug_e2ir_2452_B;

class C{
	C[] c;

	this(){
		c ~= this;
	}
}

int main(){
	C c = new C();
	if(c.c.length != 1){
		assert(0);
	}
	if(!(c.c[0] is c)){
		assert(0);
	}

	return 0;
}
