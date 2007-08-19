// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_03;

int main(){
	string x=r"\v";
	assert(x.length==2);
	assert(x[0]=='\\');
	assert(x[1]=='v');
	return 0;
}
