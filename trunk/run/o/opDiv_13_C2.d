// $HeadURL: svn://dstress.kuehne.cn/run/__DATE__01.d $
// $Date: 2005-03-12 14:49:58 +0100 (Sat, 12 Mar 2005) $
// $Author: thomask $

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-12-06
// @uri@	news:dn3old$hhr$1@digitaldaemon.com

module dstress.run.o.opDiv_13_C2;

int main() {
	int a = 1_000_000_000;
	int b =   100_000_000;

	assert(a / b == 10);

	return 0;
}
