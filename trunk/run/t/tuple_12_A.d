// $HeadURL$
// $Date$
// $HeadURL$

// @author@	downs <default_357-line@yahoo.de>
// @date@	2006-12-29
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=771
// @desc@	[Issue 771] template func returns delegate w. param list from tuple and type, odd compiler error

module dstress.run.t.tuple_12_A;

template Concat(S, T...){
	void delegate(T, S) Concat(void delegate(T) one, void delegate(S) two) {
		return delegate void(T t, S s){};
	}
}

int main() {
	void delegate(char, char, int) dg;

	dg = Concat(
			delegate void(char a, char b) {},
			delegate void(int lol) {}
		);

	return 0;
}
