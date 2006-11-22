// $HeadURL$
// $Date$
// $Author$

// @author@	Michael Arntzenius <daekharel@gmail.com>
// @date@	2006-11-20
// @uri@	news:ejte18$16s$1@digitaldaemon.com
// @desc@	[Issue 235] goto & scope: cannot goto forward into different try block level

module dstress.run.s.scope_14_E;

class C {
	synchronized void foo()
	out {
	} body {
		return;
	}
}

int main(){
	C c = new C();
	c.foo();

	return 0;
}
