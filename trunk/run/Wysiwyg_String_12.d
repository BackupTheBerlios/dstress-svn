// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_12;

int main(){
	string x=r"\x";
	assert(x.length==2);
	assert(x[0]=='\\');
	assert(x[1]=='x');
	return 0;
}
