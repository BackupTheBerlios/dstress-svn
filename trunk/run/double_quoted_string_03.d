// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_03;

int main(){
	char[] string="\n";
	assert(string.length==1);
	assert(string[0]==0x0A);
	return 0;
}
