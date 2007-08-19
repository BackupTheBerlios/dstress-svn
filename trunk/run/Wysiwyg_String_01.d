// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_01;

int main(){
	string x=r"hello";
	assert(x.length==5);
	assert(x[0]=='h');
	assert(x[1]=='e');
	assert(x[2]=='l');
	assert(x[3]=='l');
	assert(x[4]=='o');
	return 0;
}
