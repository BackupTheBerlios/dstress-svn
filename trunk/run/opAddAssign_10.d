// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

module dstress.run.opAddAssign_10;

void dummy(...){
}

int main() {
	double x = 9;
	dummy(x);
	double y+=x;
	assert(y==10);
	assert(x==9);
	return 0;
}
