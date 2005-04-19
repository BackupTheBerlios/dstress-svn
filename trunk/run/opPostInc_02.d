// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

module dstress.run.opPostInc_02;

void dummy(...){
}

int main() {
	ubyte x = 9;
	dummy(x);
	int y=x++;
	assert(y==9);
	assert(x==10);
	return 0;
}

