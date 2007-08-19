// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_14;

int main(){
	string x=r"\U";
	assert(x.length==2);
	assert(x[0]=='\\');
	assert(x[1]=='U');
	return 0;
}
