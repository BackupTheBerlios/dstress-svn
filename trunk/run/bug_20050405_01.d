// $HeadURL$
// $Date$
// $Author$

// @author@	Valéry <valery@freesurf.fr>
// @date@	2005-04-05
// @uri@	news:d2v0pb$gl$1@digitaldaemon.com

module dstress.run.bug_20050405_01;

int main(){
	bit[] a, b;
	a.length = 256;
	b.length = 256;
	b[] = a;
	return 0;
}
