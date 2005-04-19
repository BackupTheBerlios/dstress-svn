// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

module dstress.run.opPreDec_09;

void dummy(...){
}

int main() {
	float x = 9f;
	dummy(x);
	float y=--x;
	assert(y==8f);
	assert(x==8f);
	return 0;
}

