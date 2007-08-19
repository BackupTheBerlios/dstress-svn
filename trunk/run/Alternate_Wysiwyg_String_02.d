// $HeadURL$
// $Date$
// $Author$

module dstress.run.Alternate_Wysiwyg_String_02;

int main(){
	string x=`\'`;
	if(2 != x.length){ assert(0); }
	if('\\' != x[0]){ assert(0); }
	if('\'' != x[1]){ assert(0); }
	return 0;
}
