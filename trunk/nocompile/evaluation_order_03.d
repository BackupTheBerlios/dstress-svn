// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.evaluation_order_03;

void check( int a, int b){
}

int main(){
	int i;
	check(++i, ++i);
	return 0;
}
