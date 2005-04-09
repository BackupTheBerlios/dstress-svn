// $HeadURL$
// $Date$
// $Author$

// @author@	tetsuya <tetsuya_member@pathlink.com>
// @date@	2005-04-08
// @uri@	news:d36v0t$g3b$1@digitaldaemon.com

module dstress.run.opShrAssign_01;

int main(){
	uint mask = uint.max;
	mask >>= 1;
	assert(mask == (uint.max >> 1));
	return 0;
}



