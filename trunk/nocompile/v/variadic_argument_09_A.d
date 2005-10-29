// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-10-30
// @uri@	news:qwcd3a1sdc@birke.kuehne.cn

// __DSTRESS_ELINE__ 17

module dstress.nocompile.v.variadic_argument_09_A;

void test(int dummy, int pos...){
}

void main(){
	test(new int[1, 2]);
}
