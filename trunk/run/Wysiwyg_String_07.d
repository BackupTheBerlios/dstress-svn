// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_07;

int main(){
	char[] string=r"\b";
	assert(string.length==2);
	assert(string[0]=='\\');
	assert(string[1]=='b');
	return 0;
}
