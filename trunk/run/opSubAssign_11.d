// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

module dstress.run.opSubAssign_11;

void dummy(...){
}

int main() {
	real x = 9l;
	dummy(x);
	real y-=x;
	assert(y==8l);
	assert(x==9l);
	return 0;
}

