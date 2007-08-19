// $HeadURL$
// $Date$
// $Author$

module dstress.run.escape_hex_string_01;

int main(){
	string x=x"12af";
	assert(x.length==2);
	assert(x[0]==0x12);
	assert(x[1]==0xAF);
	return 0;
}
