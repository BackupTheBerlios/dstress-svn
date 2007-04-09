// $HeadURL$
// $Date$
// $Author$

// @author@	 Deewiant <deewiant@gmail.com>
// @date@	2006-08-19
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=8170
// @desc@	[Issue 287] DMD optimization bug arround dynamic array length

module dstress.run.o.odd_bug_07_E;

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
		
		lng = lng + arr.length;
	}

	return 0;
}
