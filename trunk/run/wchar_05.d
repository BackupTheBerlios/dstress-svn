// $HeadURL$
// $Date$
// $Author$

module dstress.run.wchar_05;

int main(){
	assert('\u0012'.sizeof==wchar.sizeof);
	return 0;
}
