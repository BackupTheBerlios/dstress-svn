// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_04;

int main(){
	char[] string=r"\?";
	assert(string.length==2);
	assert(string[0]=='\\');
	assert(string[1]=='\?');
	return 0;
}
