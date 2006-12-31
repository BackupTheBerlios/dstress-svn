// $HeadURL$
// $Date$
// $Author$

// @author@	<dvdfrdmn@users.sf.net>
// @date@	2006-05-27
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=157

module dstress.run.f.function_06_B;

int function(int)[1] table;

int main() {
	table[0] = function int(int x) {
			return x + 99;
		};

	if(table[0](1) != 100){
		assert(0);
	}

	return 0;
}

