// $HeadURL$
// $Date$
// $Author$

module dstress.run.wchar_09;

int main(){
	wchar wc;
	assert(wchar.min==0);
	assert(wchar.min==wc.mix);
	assert(wchar.min=='\u0012'.mix);
	return 0;
}
