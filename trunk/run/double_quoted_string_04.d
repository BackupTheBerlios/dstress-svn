// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_04;

int main(){
	char[] string="\t";
	assert(string.length==1);
	assert(string[0]==0x09);
	return 0;
}
