// $HeadURL$
// $Date$
// $Author$

// @author@	Valéry <valery@freesurf.fr>
// @date@	2005-04-05
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3470

module dstress.run.bug_20050405_01;

int main(){
	bool[] a, b;
	a.length = 256;
	b.length = 256;
	b[] = a;
	return 0;
}
