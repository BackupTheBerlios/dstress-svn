// $HeadURL$
// $Date$
// $Author$

// @author@	Brian Gardner <briangr@friberg.us>
// @date@	2005-03-23
// @uri@	news:d1sald$2u6e$1@digitaldaemon.com

// __DSTRESS_ELINE__ 13

module dstress.nocompile.bug_cgcod_1445_A;

typedef u *u();

u s(){
	static int x = 0;
	return s;
}

int main(){
	s();
	return 0;
}

