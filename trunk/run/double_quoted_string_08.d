// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_08;

int main(){
	string x="\a";
	assert(x.length==1);
	assert(x[0]==0x07);
	return 0;
}
