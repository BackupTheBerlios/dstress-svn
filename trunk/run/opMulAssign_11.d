// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

module dstress.run.opMulAssign_11;

void dummy(...){
}

int main() {
	real x = 3l;
	dummy(x);
	real y=2l;
	y*=x;
	assert(y==6l);
	assert(x==3l);
	return 0;
}

