// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_09;

int main(){
	char[] string=`\n`;
	assert(string.length==2);
	assert(string[0]=='\\');
	assert(string[1]=='n');
	return 0;
}
