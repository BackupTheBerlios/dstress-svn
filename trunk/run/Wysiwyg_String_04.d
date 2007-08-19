// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_04;

int main(){
	string x=r"\?";
	assert(x.length==2);
	assert(x[0]=='\\');
	assert(x[1]=='\?');
	return 0;
}
