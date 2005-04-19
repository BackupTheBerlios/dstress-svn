// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 12

module dstress.norun.bounds_checking_06;

static ~this(){
	int[] arr;
	arr.length=3;
	arr[4]=4;
}

int main(){
	return 0;
}
