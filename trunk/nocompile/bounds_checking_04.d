// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 12

module dstress.nocompile.bounds_checking_04;

int main(){
	byte[5] a;
	const int i=-1;
	a[i]=3;

	return 0;
}
