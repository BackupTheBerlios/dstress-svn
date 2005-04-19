// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

module dstress.run.opDivAssign_11;

void dummy(...){
}

int main() {
	real x = 2l;
	dummy(x);
	real y=6l;
	y/=x;
	assert(y==3l);
	assert(x==2l);
	return 0;
}

