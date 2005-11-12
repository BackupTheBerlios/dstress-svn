// $HeadURL$
// $Date$
// $Author$

module dstress.run.o.opIndex_06_C;

int main(){
	const wchar c = "abc"[1];
	assert(c=='b');
	return 0;
}
