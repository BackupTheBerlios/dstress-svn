// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -release
// __DSTRESS_ELINE__ 13

module dstress.norun.bounds_checking_03;

static this(){
	int[] arr;
	arr.length=3;
	arr[4]=4;
}

int main(){
	return 0;
}