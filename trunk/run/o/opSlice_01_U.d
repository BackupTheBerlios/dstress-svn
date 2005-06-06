// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-05-31
// @uri@	news:d7hfef$1dtf$4@digitaldaemon.com
// @desc@	Internal error: ../ztc/cod1.c 2503

module dstress.run.o.opSlice_01_U;

enum E{
	a=2,
	b=0
}

int main(){
	E arr[4][2];

	arr[0][1]=E.b;
	
	arr[1..2] = arr[0];
	
	assert(E.a==arr[0][0]);
	assert(E.b==arr[0][1]);
	assert(E.a==arr[1][0]);
	assert(E.b==arr[1][1]);
	assert(E.a==arr[2][0]);
	assert(E.b==arr[2][1]);
	assert(E.a==arr[3][0]);
	assert(E.a==arr[3][1]);

	return 0;
}

