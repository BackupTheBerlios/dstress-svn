// $HeadURL$
// $Date$
// $Author$

// @author@	<niqbmozgvx@mailinator.com>
// @date@	2007-04-15
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1150
// @desc@	[Issue 1150] Compiler creates wrong code

module dstress.run.o.odd_bug_15_A;

class RangeCoder {
	uint[258] cumCount;
	uint lower;
	uint upper;
	ulong range;

	this() {
		for (int i=0; i < cumCount.length; i++){
			cumCount[i] = i;
		}
		lower = 0;
		upper = 0xffffffff;
		range = 0x100000000;
	}

	void encode(uint symbol) {
		uint total = cumCount[length - 1];		
		upper = lower + cast(uint)((cumCount[symbol+1] * range) / total) - 1;
		lower = lower + cast(uint)((cumCount[symbol]   * range) / total);
	}

}

int main() {
	RangeCoder rc = new RangeCoder();
	rc.encode(77);
	return 0;
}
