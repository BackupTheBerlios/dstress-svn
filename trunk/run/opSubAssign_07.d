// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

module dstress.run.opSubAssign_07;

void dummy(...){
}

int main() {
	long x = 9;
	dummy(x);
	int y-=x;
	assert(y==8);
	assert(x==9);
	return 0;
}
