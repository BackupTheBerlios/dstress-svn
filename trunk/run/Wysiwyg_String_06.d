// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_06;

int main(){
	string x=r"\a";
	assert(x.length==2);
	assert(x[0]=='\\');
	assert(x[1]=='a');
	return 0;
}
