// $HeadURL$
// $Date$
// $Author$

module dstress.run.wchar_03;

int main(){
	wchar c;
	assert(wchar.sizeof==2);
	assert(wchar.sizeof==c.sizeof);
	assert(wchar.sizeof==(cast(wchar)'a').sizeof);
	assert(wchar.sizeof==typeof(c).sizeof);
	return 0;
}
