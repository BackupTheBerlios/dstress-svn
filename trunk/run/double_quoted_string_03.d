// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_03;

int main(){
	string x="\n";
	assert(x.length==1);
	assert(x[0]==0x0A);
	return 0;
}
