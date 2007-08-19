// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_09;

int main(){
	string x="\b";
	assert(x.length==1);
	assert(x[0]==0x08);
	return 0;
}
