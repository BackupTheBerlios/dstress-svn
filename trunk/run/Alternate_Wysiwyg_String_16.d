// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_16;

int main(){
	char[] string=`"`;
	assert(string.length==1);
	assert(string[0]=='"');
	return 0;
}
