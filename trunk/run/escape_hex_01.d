// $HeadURL$
// $Date$
// $Author$

module dstress.run.escape_hex_01;

int main(){
	char[] string="\x412";
	assert(string.length==2);
	assert(string[0]=='A');
	assert(string[1]=='2');
	return 0;
}
