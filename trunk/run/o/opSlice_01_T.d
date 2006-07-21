// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-05-31
// @uri@	news:d7hfef$1dtf$4@digitaldaemon.com
// @desc@	Internal error: ../ztc/cod1.c 2503

module dstress.run.o.opSlice_01_T;

interface mInter{
}

class mObj : mInter{
}

int main(){
	mInter arr[4][2];

	arr[0][1]=new mObj();

	arr[1..3] = arr[0];

	if(!(null is arr[0][0])){
		assert(0);
	}
	if(null is arr[0][1]){
		assert(0);
	}
	if(!(null is arr[1][0])){
		assert(0);
	}
	if(null is arr[1][1]){
		assert(0);
	}
	if(!(null is arr[2][0])){
		assert(0);
	}
	if(null is arr[2][1]){
		assert(0);
	}
	if(!(null is arr[3][0])){
		assert(0);
	}
	if(!(null is arr[3][1])){
		assert(0);
	}

	return 0;
}

