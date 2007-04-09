// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-09-09
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4963

module dstress.run.i.inline_14_C;

int a = 0;
int b = 0;

class A{
	void f(){
		a++;
	}
}

class B : A{
	void f(){
		b++;
		super.f();
	}
}

int main(){
	(new B).f();
	assert(a==1);
	assert(b==1);
	return 0;
}
