// $HeadURL$
// $Date$
// $Author$

module dstress.run.dchar_05;

int main(){
	assert('\U00000012'.sizeof==dchar.sizeof);
	return 0;
}
