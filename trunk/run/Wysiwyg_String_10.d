// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_10;

int main(){
	string x=r"\r";
	assert(x.length==2);
	assert(x[0]=='\\');
	assert(x[1]=='r');
	return 0;
}
