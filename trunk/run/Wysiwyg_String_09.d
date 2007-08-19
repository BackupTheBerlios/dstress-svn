// $HeadURL$
// $Date$
// $Author$

module dstress.run.Wysiwyg_String_09;

int main(){
	string x=r"\n";
	assert(x.length==2);
	assert(x[0]=='\\');
	assert(x[1]=='n');
	return 0;
}
