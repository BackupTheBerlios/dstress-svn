// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-17
// @uri@	news:d3sq2j$1086$1@digitaldaemon.com

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.array_initialization_10;

int main(){
	static char a[int.max/32]= [0];
	return 0;
}

