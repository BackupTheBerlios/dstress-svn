// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

module dstress.run.opDivAssign_05;

void dummy(...){
}

int main() {
	int x = 2;
	dummy(x);
	int y=6;
	y/=x;
	assert(y==3);
	assert(x==2);
	return 0;
}

