// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_04;

int main(){
	string x="\t";
	assert(x.length==1);
	assert(x[0]==0x09);
	return 0;
}
