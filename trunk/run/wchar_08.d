// $HeadURL$
// $Date$
// $Author$

module dstress.run.wchar_08;

int main(){
	wchar wc;
	assert(wchar.max==0xFFFF);
	assert(wchar.max==wc.max);
	assert(wchar.max=='\u0012'.max);
	return 0;
}
