// $HeadURL$
// $Date$
// $Author$

module dstress.run.escape_octal_01;

int main(){
	char[] string="\012";
	assert(string.length==1);
	assert(string[0]==0x0A);
	return 0;
}
