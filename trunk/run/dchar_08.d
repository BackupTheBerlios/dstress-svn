// $HeadURL$
// $Date$
// $Author$

module dstress.run.dchar_08;

int main(){
	dchar wc;
	assert(dchar.max==0x10FFFF);
	assert(dchar.max==typeof(wc).max);
	assert(dchar.max=='\U00000012'.max);
	return 0;
}
