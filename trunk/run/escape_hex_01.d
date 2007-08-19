// $HeadURL$
// $Date$
// $Author$

module dstress.run.escape_hex_01;

int main(){
	string x="\x412";
	assert(x.length==2);
	assert(x[0]=='A');
	assert(x[1]=='2');
	return 0;
}
