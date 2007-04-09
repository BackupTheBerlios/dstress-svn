// $HeadURL$
// $Date$
// $Author$

// @author@	Kevin Bealer <Kevin_member@pathlink.com>
// @date@	2005-02-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2831


module dstress.run.bug_elfobj_1251_C;

bool foo(char[][] arg) {
	int x;
	for (;;) {
		if (arg.length == 1)
			return true;
		x = 1;
	}
	return false;
}

int main(char[][] arg){
	foo(arg);
	return 0;
}
