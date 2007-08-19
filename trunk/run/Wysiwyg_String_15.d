// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_15;

int main(){
	string x=r"
";
	assert(x.length==1);
	assert(x[0]=='\n');
	return 0;
}
