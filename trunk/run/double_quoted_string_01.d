// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_quoted_string_01;

int main(){
	string x="abc";
	assert(x.length==3);
	assert(x[0]=='a');
	assert(x[1]=='b');
	assert(x[2]=='c');
	return 0;
}
