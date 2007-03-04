// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle <bhinkle4@juno.com>
// @date@	2004-12-09
// @uri@	news:cp86l0$106o$2@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2491

module dstress.run.bug_elfobj_1251_A;

bool foo() {
	int x;
	for (;;) {
		if (x == 0)
			return true;
		x = 1;
	}
	return false;
}

int main(){
	foo();
	return 0;
}
