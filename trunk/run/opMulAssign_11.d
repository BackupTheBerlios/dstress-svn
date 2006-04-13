// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

module dstress.run.opMulAssign_11;

void dummy(...){
}

int main() {
	real x = 3.0L;
	dummy(x);
	real y = 2.0L;
	y*=x;
	
	if(y != 6.0L){
		assert(0);
	}
	
	if(x != 3.0L){
		assert(0);
	}

	return 0;
}

