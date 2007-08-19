// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_11;

int main(){
	string x="\v";
	assert(x.length==1);
	assert(x[0]==0x0B);
	return 0;
}
