// $HeadURL$
// $Date$
// $Author$

// @author@	John C <johnch_atms@hotmail.com>
// @date@	2005-09-30
// @uri@	news:dhj6pt$1crc$1@digitaldaemon.com

module dstress.run.i.inline_15_A;

int[] toArray(int[] params ...) {
	return params.dup;
}

int[] values;

void ensure() {
	values = toArray(1, 2, 3);
}

int main(){
	ensure();
	assert(values.length==3);
	assert(values[0]==1);
	assert(values[1]==2);
	assert(values[2]==3);
	return 0;
}
