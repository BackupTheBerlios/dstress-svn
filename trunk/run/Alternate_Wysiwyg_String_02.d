// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_02;

int main(){
	char[] string=`\'`;
	assert(string.length==2);
	assert(string[0]=='\\');
	assert(string[1]=='\'');
	return 0;
}
