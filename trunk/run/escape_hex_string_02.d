// $HeadURL$
// $Date$
// $Author$

module dstress.run.escape_hex__string_02;

int main(){
	string x=x" 1 2
a
	f";
	assert(x.length==2);
	assert(x[0]==0x12);
	assert(x[1]==0xAF);
	return 0;
}
