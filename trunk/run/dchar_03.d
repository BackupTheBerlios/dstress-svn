// $HeadURL$
// $Date$
// $Author$

module dstress.run.dchar_03;

int main(){
	dchar c;
	assert(dchar.sizeof==4);
	assert(dchar.sizeof==c.sizeof);
	assert(dchar.sizeof==(cast(dchar)'a').sizeof);
	assert(dchar.sizeof==typeof(c).sizeof);
	return 0;
}
