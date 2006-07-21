// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-08-10
// @uri@	news:dddj2k$lrr$1@digitaldaemon.com
// @desc@	Negative numbers are treated as Positive in compares.

module dstress.run.o.opCmp_05_A;

int main(){
	if(128<0){
		assert(0);
	}

	if(128<=0){
		assert(0);
	}

	if(128>0){
		assert(1);
	}else{
		assert(0);
	}

	if(128>=0){
		assert(1);
	}else{
		assert(0);
	}

	return 0;
}
