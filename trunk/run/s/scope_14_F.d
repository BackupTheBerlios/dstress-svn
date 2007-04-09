// $HeadURL$
// $Date$
// $Author$

// @author@	Michael Arntzenius <daekharel@gmail.com>
// @date@	2006-11-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=9156
// @desc@	[Issue 235] goto & scope: cannot goto forward into different try block level

module dstress.run.s.scope_14_F;

class C {
	synchronized void foo()
	in {
	} body {
		return;
	}
}

int main(){
	C c = new C();
	c.foo();

	return 0;
}
