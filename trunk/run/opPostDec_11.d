// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

module dstress.run.opPostDec_11;

void dummy(...){
}

int main() {
	real x = 9.0;
	dummy(x);
	real y=x--;

	if(y != 9.0L){
		assert(0);
	}

	if(x != 8.0L){
		assert(0);
	}

	return 0;
}

