module dstress.nocompile.evaluation_order_03;

void check( int a, int b){
}

int main(){
	int i;
	check(++i, ++i);
	return 0;
}
