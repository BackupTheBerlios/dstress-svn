// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

module dstress.run.opDivAssign_09;

void dummy(...){
}

int main() {
	float x = 2f;
	dummy(x);
	float y=6f;
	y/=x;
	assert(y==3f);
	assert(x==2f);
	return 0;
}

