// $HeadURL$
// $Date$
// $Author$

// @auhtor@	 Deewiant <deewiant@gmail.com>
// @date@	2006-08-19
// @uri@	news:ec6kit$560$1@digitaldaemon.com
// @desc@	[Issue 287] DMD optimization bug arround dynamic array length

module dstress.run.o.odd_bug_07_D;

int main() {
	int lng, lngnew;

	int[] arr = new int[1];

	for (int i = 10; i--;) {
		lngnew = lng + arr.length;
		lng = lngnew;

		lngnew = lng + arr.length;

		if(lng + 1 != lngnew){
			assert(0);
		}
		
		lng += arr.length;
	}

	return 0;
}