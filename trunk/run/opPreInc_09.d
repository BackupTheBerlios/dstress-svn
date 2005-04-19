// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

module dstress.run.opPreInc_09;

void dummy(...){
}

int main() {
	float x = 9f;
	dummy(x);
	float y=++x;
	assert(y==10f);
	assert(x==10f);
	return 0;
}

