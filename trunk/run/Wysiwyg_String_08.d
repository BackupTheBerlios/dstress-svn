// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_08;

int main(){
	string x=r"\f";
	assert(x.length==2);
	assert(x[0]=='\\');
	assert(x[1]=='f');
	return 0;
}
