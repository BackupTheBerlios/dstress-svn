// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_15;

int main(){
	char[] string=r"
";
	assert(string.length==1);
	assert(string[0]=='\n');
	return 0;
}
