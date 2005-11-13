// $HeadURL$
// $Date$
// $Author$

// @author@	 Garett Bass <garettbass@studiotekne.com>
// @date@	2005-11-11
// @uri@	news:dl14b4$2noa$1@digitaldaemon.com

// __DSTRESS_ELINE__ 19

module dstress.nocompile.i.inout_01;

void test(inout byte i){
	i++;
}

void main(){
	short s;
	test(s);
	assert(s==1);
}
