// $HeadURL$
// $Date$
// $Author$

module dstress.run.escape_unicode16_02;

int main(){
	string x="\u02AF1";
	assert(x.length==3);
	assert(x[0]==0xCA);
	assert(x[1]==0xAF);
	assert(x[2]=='1');
	return 0;
}
