// $HeadURL$
// $Date$
// $Author$

module dstress.run.dchar_09;

int main(){
	dchar wc;
	assert(dchar.min==0);
	assert(dchar.min==wc.min);
	assert(dchar.min=='\U00000012'.min);
	return 0;
}
