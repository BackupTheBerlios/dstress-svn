// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_13;

int main(){
	char[] string=`\u`;
	assert(string.length==2);
	assert(string[0]=='\\');
	assert(string[1]=='u');
	return 0;
}
