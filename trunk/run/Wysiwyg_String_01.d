// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_01;

int main(){
	char[] string=r"hello";
	assert(string.length==5);
	assert(string[0]=='h');
	assert(string[1]=='e');
	assert(string[2]=='l');
	assert(string[3]=='l');
	assert(string[4]=='o');
	return 0;
}
