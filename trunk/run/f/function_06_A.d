// $HeadURL$
// $Date$
// $Author$

// @author@	<dvdfrdmn@users.sf.net>
// @date@	2006-05-27
// @uri@	news:bug-157-31@http.d.puremagic.com/bugzilla/

module dstress.run.f.function_06_A;

int function(int)[] table;

int main() {
	table ~= function int(int x) {
			return x + 99;
		};

	if(table[0](1) != 100){
		assert(0);
	}

	return 0;
}

