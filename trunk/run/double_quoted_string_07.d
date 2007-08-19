// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_07;

int main(){
	string x="\?";
	assert(x.length==1);
	assert(x[0]=='?');
	return 0;
}
