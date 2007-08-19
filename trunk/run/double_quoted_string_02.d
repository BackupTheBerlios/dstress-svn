// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_02;

int main(){
	string x="
	";
	assert(x.length==2);
	assert(x[0]=='\n');
	assert(x[1]=='\t');
	return 0;
}
