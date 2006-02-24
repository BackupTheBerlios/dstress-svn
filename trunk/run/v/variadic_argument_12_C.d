// $HeadURL$
// $Date$
// $Author$

// @author@	Fredrik Olsson <peylow@treyst.se>
// @date@	2006-01-26
// @uri@	news:drakns$15ot$2@digitaldaemon.com

module dstress.run.v.variadic_argument_12_C;

size_t test(...) {
	return _arguments.length;
}

int main() {
	if(test(1, 2, 3)){
		return 0;
	}
}
