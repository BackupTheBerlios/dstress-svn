// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_06;

int main(){
	char[] string=r"\a";
	assert(string.length==2);
	assert(string[0]=='\\');
	assert(string[1]=='a');
	return 0;
}
