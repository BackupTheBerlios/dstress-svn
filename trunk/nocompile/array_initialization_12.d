// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-17
// @news@	news:d3sqb9$10fq$1@digitaldaemon.com

// __DSTRESS_ELINE__ 14

module dstress.nocompile.array_initialization_12;

int main(){
	static char a[1] = [int.max:0];
	return 0;
}
