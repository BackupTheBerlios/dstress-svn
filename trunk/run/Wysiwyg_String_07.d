// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_07;

int main(){
	string x=r"\b";
	assert(x.length==2);
	assert(x[0]=='\\');
	assert(x[1]=='b');
	return 0;
}
