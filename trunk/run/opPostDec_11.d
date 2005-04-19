// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

module dstress.run.opPostDec_11;

void dummy(...){
}

int main() {
	real x = 9;
	dummy(x);
	real y=x--;
	assert(y==9l);
	assert(x==8l);
	return 0;
}

