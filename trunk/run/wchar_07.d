// $HeadURL$
// $Date$
// $Author$

module dstress.run.wchar_07;

int main(){
	wchar wc;
	assert(wchar.init==0xFFFF);
	assert(wchar.init==wc);
	assert(wchar.init==wc.init);
	return 0;
}
