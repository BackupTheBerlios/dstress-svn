// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_08;

int main(){
	char[] string=`\f`;
	assert(string.length==2);
	assert(string[0]=='\\');
	assert(string[1]=='f');
	return 0;
}
