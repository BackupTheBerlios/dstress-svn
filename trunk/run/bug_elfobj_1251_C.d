// $HeadURL$
// $Date$
// $Author$

// @author@	Kevin Bealer <Kevin_member@pathlink.com>
// @date@	2005-02-03
// @uri@	news:cts483$1klp$1@digitaldaemon.com


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
