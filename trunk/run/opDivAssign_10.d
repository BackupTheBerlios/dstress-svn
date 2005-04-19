// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

module dstress.run.opDivAssign_10;

void dummy(...){
}

int main() {
	double x = 2;
	dummy(x);
	double y=6;
	y/=x;
	assert(y==3);
	assert(x==2);
	return 0;
}

