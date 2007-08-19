// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_11;

int main(){
	string x=r"\t";
	assert(x.length==2);
	assert(x[0]=='\\');
	assert(x[1]=='t');
	return 0;
}
