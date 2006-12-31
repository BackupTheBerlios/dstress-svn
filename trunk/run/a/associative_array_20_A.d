// $HeadURL$
// $Date$
// $Author$

// @author@	Mitja Slenc <mslenc@gmail.com>
// @date@	2006-12-05
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=653
// @desc@	[Issue 653] New: AAs are slightly broken

module dstress.run.a.associative_array_20_A;

int main() {
        int[uint] aa;

        aa[1236448822] = 0;
        aa[2716102924] = 1;
        aa[ 315901071] = 2;

        aa.remove(1236448822);

	int* x = 2716102924 in aa;
	if(!x){
		assert(0);
	}
	if(*x != 1){
		assert(0);
	}

	return 0;
}

