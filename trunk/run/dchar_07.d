// $HeadURL$
// $Date$
// $Author$

module dstress.run.dchar_07;

int main(){
	dchar wc;
	assert(dchar.init==0xFFFF);
	assert(dchar.init==wc);
	assert(dchar.init==typeof(wc).init);
	return 0;
}
