// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_05;

int main(){
	string x="\"";
	assert(x.length==1);
	assert(x[0]==0x22);
	return 0;
}
