// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_15;

int main(){
	char[] string=`
`;
	assert(string.length==1);
	assert(string[0]=='\n');
	return 0;
}
