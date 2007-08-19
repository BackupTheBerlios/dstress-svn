// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_06;

int main(){
	string x="\'";
	assert(x.length==1);
	assert(x[0]=='\'');
	return 0;
}
