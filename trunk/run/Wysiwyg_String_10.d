// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_10;

int main(){
	char[] string=r"\r";
	assert(string.length==2);
	assert(string[0]=='\\');
	assert(string[1]=='r');
	return 0;
}
