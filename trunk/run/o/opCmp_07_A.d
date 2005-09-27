// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-09-27
// @uri@	news:dhbb83$1gj4$1@digitaldaemon.com

module dstress.run.o.opCmp_07_A;

int main(){
	bit[9] a;
	a[8] = true;
	bit[9] b;
	b[8] = false;
	
	assert(a>b);
	
	return 0;
}