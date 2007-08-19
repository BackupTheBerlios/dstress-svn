// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_13;

int main(){
	string x=r"\u";
	assert(x.length==2);
	assert(x[0]=='\\');
	assert(x[1]=='u');
	return 0;
}
