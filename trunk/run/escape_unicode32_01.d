// $HeadURL$
// $Date$
// $Author$

module dstress.run.escape_unicode32_01;

int main(){
	wstring x="\U000002AF1";
	assert(x.length==2);
	assert(x[0]==0x2AF);
	assert(x[1]=='1');
	return 0;
}
