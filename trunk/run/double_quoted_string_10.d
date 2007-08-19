// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_10;

int main(){
	string x="\f";
	assert(x.length==1);
	assert(x[0]==0x0C);
	return 0;
}
