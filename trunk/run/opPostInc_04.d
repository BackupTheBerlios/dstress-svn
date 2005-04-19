// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

module dstress.run.opPostInc_04;

void dummy(...){
}

int main() {
	ushort x = 9;
	dummy(x);
	int y=x++;
	assert(y==9);
	assert(x==10);
	return 0;
}

